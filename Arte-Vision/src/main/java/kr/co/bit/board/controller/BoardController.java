package kr.co.bit.board.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.cloud.translate.Translate;
import com.google.cloud.translate.Translate.TranslateOption;
import com.google.cloud.translate.TranslateOptions;
import com.google.cloud.translate.Translation;

import kr.co.bit.board.service.BoardService;
import kr.co.bit.board.vo.BoardVO;
import kr.co.bit.reply.service.ReplyService;

@RequestMapping("/board")
@RestController
public class BoardController {

	@Autowired
	private BoardService service;

	@Autowired
	ReplyService reservice;
	@Autowired
	ServletContext servletContext;

	
	@RequestMapping("/mulist")
	public ModelAndView mulist() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("file/mulist");
		return mav;
	}
	@RequestMapping("/search")
	public ModelAndView search() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("board/search");
		return mav;
	}
	@RequestMapping("/content")
	public ModelAndView content() {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("board/content");
		return mav;
	}

	@RequestMapping(value = "/imagePopup")
	public ModelAndView imagePopup() {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("board/image");
		return mav;
	}

	// 이미지 첨부 에이작스
	@RequestMapping(value = "/singleUploadImageAjax", method = RequestMethod.POST)
	public HashMap<Object, Object> singleUploadImageAjax(@RequestParam("Filedata") MultipartFile multipartFile,
			HttpSession httpSession) {
		System.out.println("오니?");
		HashMap<Object, Object> fileInfo = new HashMap<Object, Object>();
		if (multipartFile != null && !(multipartFile.getOriginalFilename().equals(""))) {
			String originalName = multipartFile.getOriginalFilename();
			String originalNameExtension = originalName.substring(originalName.lastIndexOf(".") + 1).toLowerCase();
			if (!((originalNameExtension.equals("jpg")) || (originalNameExtension.equals("gif"))
					|| (originalNameExtension.equals("png")) || (originalNameExtension.equals("bmp")))) {
				fileInfo.put("result", -1);
				return fileInfo;
			}
			long filesize = multipartFile.getSize();
			long limitFileSize = 1 * 1024 * 1024;
			if (limitFileSize < filesize) {
				fileInfo.put("result", -2);
				return fileInfo;
			}
			String path = "C:\\Lecture\\web-workspace\\Arte-Vision\\src\\main\\webapp\\upload\\";
			File file = new File(path);
			if (!file.exists()) {
				file.mkdirs();
			}
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = formatter.format(new Date());
			String modifyName = today + "-" + UUID.randomUUID().toString().substring(20) + "." + originalNameExtension;
			try {
				multipartFile.transferTo(new File(path + modifyName));
				System.out.println("** upload 정보 **");
				System.out.println("** path : " + path + " **");
				System.out.println("** originalName : " + originalName + " **");
				System.out.println("** modifyName : " + modifyName + " **");
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("이미지파일업로드 실패 - singleUploadImageAjax");
			}
			String imageurl = "/upload/" + modifyName;
			fileInfo.put("imageurl", imageurl);
			fileInfo.put("filename", modifyName);
			fileInfo.put("filesize", filesize);
			fileInfo.put("imagealign", "C");
			fileInfo.put("originalurl", imageurl);
			fileInfo.put("thumburl", imageurl);
			fileInfo.put("result", 1);
		}
		System.out.println(fileInfo);
		return fileInfo;
	}

	@RequestMapping(value = "/info1", method = RequestMethod.GET)
	public ModelAndView info() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("file/infosel");
		return mav;
	}

	@RequestMapping(value = "/info1", method = RequestMethod.POST) //
	public ModelAndView info(@RequestParam String api, Model mod) throws Exception {

		ModelAndView mav = new ModelAndView();

		String s0;
		Process oProcess2;
		List<String> list5 = new ArrayList<String>();
		List<String> list6 = new ArrayList<String>();

		try {

			String str5 = api;
			System.out.println(str5);
			oProcess2 = new ProcessBuilder("cmd", "/c", "python C:\\python36\\crawling3.py " + str5).start();

			BufferedReader stdOut4 = new BufferedReader(new InputStreamReader(oProcess2.getInputStream(), "EUC-KR"));

			list6.add(str5);
			for (int i = 0; i < 3; i++) {
				while ((s0 = stdOut4.readLine()) != null) {
					list5.add(s0);
				}
			}

			if (list5.size() < 1) {
				list5.add("<h2> 해당 지역엔 미술전시가 없습니다 !</h2>");
			}

			mav.addObject("list5", list5);
			mav.addObject("list6", list6);

			for (int i = 0; i < list5.size(); i++) {
			}
			mav.addObject("list5", list5);
			mav.setViewName("file/info");

		} catch (IOException e) {
			e.printStackTrace();

		}

		return mav;

	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public ModelAndView upload() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("file/fileUploadForm");
		return mav;
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ModelAndView fileUpload(@RequestParam("api") String api,
			@RequestParam(value = "test", required = false) String test,
			@RequestParam(value = "attachFile1", required = false) MultipartFile mFile, HttpServletRequest request,
			Model mod) throws Exception {
		HttpSession session = request.getSession();
		String uploadDir = ("C:/Lecture/web-workspace/Arte-Vision/src/main/webapp/upload/");
		String str2 = api;
		String str4 = test;
		ModelAndView mav = new ModelAndView();
		String oriFileName = null;
		mav.addObject("api",str2);
		if (str4 == null) {
			oriFileName = mFile.getOriginalFilename();
			if (oriFileName != null && !oriFileName.equals("")) {
				String ext = "";
				int index = oriFileName.lastIndexOf(".");
				if (index != -1) {
					ext = oriFileName.substring(index);
				}

				String saveFileName = oriFileName;
				mFile.transferTo(new File(uploadDir + saveFileName));
				request.setAttribute("oriFileName", oriFileName);

			}
		}
		String s;
		String s1;
		List<String> list2 = new ArrayList<String>();

		Process oProcess1;
		List<String> list = new ArrayList<String>();
		List<String> list1 = new ArrayList<String>();
		if (oriFileName == null) {
			oriFileName = request.getParameter("oriFileName");
			request.setAttribute("oriFileName", oriFileName);
		}

		Process oProcess;

		try {

			oProcess = new ProcessBuilder("cmd", "/c", "python C:\\python36\\test.py " + str2
					+ " C:\\Lecture\\web-workspace\\Arte-Vision\\src\\main\\webapp\\upload\\" + oriFileName).start();


			BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream(), "EUC-KR"));
			List<String> list3 = new ArrayList<String>();

			while ((s = stdOut.readLine()) != null) {
				list.add(s);
			}
			for (int i = 0; i < list.size(); i++) {
				if (str2.equals("web") && !str2.equals("labels") && !str2.equals("text")) {
					if (list.get(i).contains("페이지") || list.get(i).contains("개의")
							|| list.get(i).contains("Description:") || list.get(i).contains("Score")) {
						list3.add(list.get(i));
					} else {
						list3.add("<a href=" + list.get(i) + ">" + list.get(i) + "</a>");
					}
				} else if (str2.equals("landmarks")) {
					list3.add(list.get(i));
					if (list3.size() >= 1) {
						Translate translate = TranslateOptions.getDefaultInstance().getService();
						String text1 = list.get(0);

						// Translates some text into Russian
						Translation translation = translate.translate(text1, TranslateOption.sourceLanguage("en"),
								TranslateOption.targetLanguage("ko"));
						String BoardList = translation.getTranslatedText();
						mav.addObject("text", text1);
						mav.addObject("BoardList", BoardList);
					} 

				}

				else if (str2.equals("text")) {

					list3.add(list.get(i));

					Translate translate = TranslateOptions.getDefaultInstance().getService();
					String text = list.get(1);

					Translation translation = translate.translate(text, TranslateOption.sourceLanguage("en"),
							TranslateOption.targetLanguage("ko"));
					String BoardList = translation.getTranslatedText();
					mav.addObject("text", text);
					mav.addObject("BoardList", BoardList);
				}

				else if (str2.equals("labels")) {
					list3.add(list.get(i));
				}

			}

			if (list3.size() < 1) {
				list3.add("결과값이 없습니다!");
			}

			mav.addObject("list", list3);


			if (str2.equals("web")) {
				for (int i = 0; i < list.size(); i++) {
					if (list.get(i).contains("Description:")) {
						list1.add(list.get(i));
					}
				}
				String str = list1.get(0).substring(14, list1.get(0).length());
				String str1 = str.replace(" ", "+");

				Translate translate = TranslateOptions.getDefaultInstance().getService();

				String text = str;

				Translation translation = translate.translate(text, TranslateOption.sourceLanguage("en"),
						TranslateOption.targetLanguage("ko"));
				String BoardList = translation.getTranslatedText();

				mav.addObject("text", text);
				mav.addObject("BoardList", BoardList);

				oProcess1 = new ProcessBuilder("cmd", "/c", "python C:\\python36\\crawling.py " + str1).start();
				BufferedReader stdOut1 = new BufferedReader(new InputStreamReader(oProcess1.getInputStream(), "EUC-KR"));
				while ((s1 = stdOut1.readLine()) != null) {
					list2.add(s1);

				}
				session.setAttribute("list2", list2);
			}
			mav.setViewName("board/test");

		} catch (IOException e) {
			e.printStackTrace();
		}

		return mav;

	}

	@RequestMapping(value="/listSearch", method = RequestMethod.POST)
	public ModelAndView listSearch(@RequestParam(value = "pageNum", required = false) int pageNum,@RequestParam(value = "search", required = false) String search) {
		ModelAndView mav = new ModelAndView();
		int pageNo = 1;
		try {
			pageNo = pageNum;
		} catch (Exception e) {
		}
		Map<String,Object> searchMap = new HashMap<>();
		searchMap.put("title",search);
		searchMap.put("writer",search);
		searchMap.put("content",search);
		int totalCount = service.selectBoardCount(searchMap);
		searchMap.put("pageNo",pageNo);
		List<BoardVO> list = service.selectAllBoard(searchMap);
		if(list.size() < 1) {
			mav.addObject("listNo",0);
		}else {
			BoardVO listNo = list.get(0);
			mav.addObject("listNo",listNo.getNo());
		}
		int listSize = 10;
		int lastPage = (totalCount % listSize == 0) ? totalCount / listSize : totalCount / listSize + 1;
		
		mav.addObject("pageNo",pageNo);
		mav.addObject("lastPage",lastPage);
		int beginPage = 0;
		int endPage = 0;
		if(pageNo / 10 == 0) {
			beginPage = 1;
			if(lastPage > 10) {
				endPage = 10;
			}else {
				endPage = lastPage;
			}
		}else {
			beginPage = pageNo-5;
			endPage = pageNo+5;
			if(endPage > lastPage) {
				endPage = lastPage;
			}
		}
		
		mav.addObject("beginPage",beginPage);
		mav.addObject("endPage",endPage);
		
		
		
		
		
		List<BoardVO> list2 = new ArrayList<>();
		for (BoardVO vo : list) {
			int reNum = vo.getNo();
			int rtotalCount = reservice.selectReplyCount(reNum);
			vo.setReNum(rtotalCount);
			list2.add(vo);
		}
		if(list2.size() < 1) {
			String str = "검색된 결과가 없습니다.";
			mav.addObject("str",str);
		}else {
			mav.addObject("list",list2);
		}
		mav.setViewName("board/listSearch");
		
		
		return mav;
	}
	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(value = "pageNum", required = false) int pageNum,@RequestParam(value = "search", required = false) String search) {
		ModelAndView mav = new ModelAndView();
		int pageNo = 1;
		try {
			// 페이지 파라미터가 있는 경우 현재 페이지 번호를 설정
		pageNo = pageNum;
		} catch (Exception e) {
		}
		Map<String,Object> searchMap = new HashMap<>();
        	searchMap.put("title",search);
        	searchMap.put("writer",search);
        	searchMap.put("content",search);
		int totalCount = service.selectBoardCount(searchMap);
           searchMap.put("pageNo",pageNo);
		List<BoardVO> list = service.selectAllBoard(searchMap);
		if(list.size() < 1) {
			mav.addObject("listNo",0);
		}else {
			BoardVO listNo = list.get(0);
			mav.addObject("listNo",listNo.getNo());
		}
		int listSize = 10;
		int lastPage = (totalCount % listSize == 0) ? totalCount / listSize : totalCount / listSize + 1;

		mav.addObject("pageNo",pageNo);
		mav.addObject("lastPage",lastPage);

		int beginPage = 0;
		int endPage = 0;
		if(pageNo / 10 == 0) {
			beginPage = 1;
			if(lastPage > 10) {
				endPage = 10;
			}else {
				endPage = lastPage;
			}
		}else {
			beginPage = pageNo-5;
			endPage = pageNo+5;
			if(endPage > lastPage) {
				endPage = lastPage;
			}
		}
		mav.addObject("beginPage",beginPage);
		mav.addObject("endPage",endPage);
		
		
		
		
		
		List<BoardVO> list2 = new ArrayList<>();
		for (BoardVO vo : list) {
			int reNum = vo.getNo();
			int rtotalCount = reservice.selectReplyCount(reNum);
			vo.setReNum(rtotalCount);
			list2.add(vo);
		}
		if(list2.size() < 1) {
			String str = "검색된 결과가 없습니다.";
			mav.addObject("str",str);
		}else {
			mav.addObject("list",list2);
		}
		mav.setViewName("board/list");
		
		
		return mav;
	}

	@RequestMapping(value = "/detailSearch", method = RequestMethod.GET)
	public ModelAndView detailSearch(@RequestParam int no) {
		ModelAndView mav = new ModelAndView();
		BoardVO boardVO = service.selectOne(no);
		boardVO.setNo(no);
		mav.addObject("boardVO",boardVO);
		mav.setViewName("board/detailSearch");
		return mav;
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView selectOne(@RequestParam int no) {
		ModelAndView mav = new ModelAndView();
		BoardVO boardVO = service.selectOne(no);
		boardVO.setNo(no);
		mav.addObject("boardVO",boardVO);
		mav.setViewName("board/detailForm");
		return mav;
	}

	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public ModelAndView writeForm(@RequestParam int listNo) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("listNo",listNo);
		mav.setViewName("board/content");
		
		return mav;
	}

	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public void write(@RequestParam (value = "no", required = false) int no,@RequestParam String title, @RequestParam String writer, @RequestParam String content) {
		BoardVO board = new BoardVO();
		board.setNo(no);
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);
		System.out.println(board);
		service.insertBoard(board);

	}

	@RequestMapping(value = "/{no}", method = RequestMethod.DELETE)
	public void delete(@PathVariable int no) {
		service.deleteBoard(no);
		service.updateBoardNo(no);
	}
	
	@RequestMapping("/deleteForm")
	public ModelAndView deleteForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/deleteForm");
		return mav;
	}

	@RequestMapping(value = "/{no}", method = RequestMethod.GET)
	public void modifyform(@PathVariable int no) {

	}

	@RequestMapping(value = "/{no}", method = RequestMethod.POST)
	public void modify(@PathVariable int no, @RequestParam String title, @RequestParam String writer,
			@RequestParam String content) {
		BoardVO board = new BoardVO();
		board.setNo(no);
		board.setTitle(title);
		board.setWriter(writer);
		board.setContent(content);

		service.modifyBoard(board);

	}

	/* @RequestMapping("/list12") */

	// return "file/fileUploadForm11";
}
