package kr.co.bit.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.google.api.client.http.HttpRequest;

import kr.co.bit.login.service.LoginService;
import kr.co.bit.login.vo.LoginVO;

@RestController
public class LoginController {
	
	@Autowired
	LoginService service;
	
	@RequestMapping(value = "/login/SignDelete", method = RequestMethod.POST)
	public ModelAndView SignDelete(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String[] str = request.getParameterValues("id");
		for(int i = 0; i < str.length; i++){
			String check = str[i];
			service.withdraw(check);
		}
		mav.setViewName("redirect:/main");
		return mav;
	}
	@RequestMapping(value = "/login/Sign", method = RequestMethod.POST)
	public ModelAndView Sign() {
		List<LoginVO> list = service.listSign();
		ModelAndView mav = new ModelAndView();
		mav.addObject("Signlist",list);
		mav.setViewName("login/Sign");
		
		return mav;
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginForm(LoginVO loginVO) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginVO", loginVO);
		mav.setViewName("login/login");
		
		return mav;
	}
	@RequestMapping(value = "/login/pwCheck", method = RequestMethod.POST)
	public String pwCheck(@RequestParam String regId) {
		
		String password = service.pwCheck(regId);
		return password;
	}
	
	@RequestMapping(value = "/login/detail", method = RequestMethod.POST)
	public ModelAndView detail( HttpServletRequest request,HttpSession session) {
		
		LoginVO loginVO = new LoginVO();
		
		loginVO.setId(request.getParameter("regId"));
		loginVO.setRegId(request.getParameter("regId"));
		loginVO.setPassword(request.getParameter("password"));
		
		if(request.getParameter("regPassword") == "") {
			loginVO.setRegPassword(request.getParameter("password"));
		}else {
			loginVO.setRegPassword(request.getParameter("regPassword"));
		}
		if(request.getParameter("regNickname") == "") {
			loginVO.setNickname(request.getParameter("nickname"));
		}else {
			loginVO.setNickname(request.getParameter("regNickname"));
		}
		loginVO.setRegBirthday(request.getParameter("regBirthday"));
		loginVO.setTel1(request.getParameter("tel1"));
		loginVO.setTel2(request.getParameter("tel2"));
		loginVO.setTel3(request.getParameter("tel3"));
		
		ModelAndView mav = new ModelAndView();
		service.updateInfo2(loginVO);
	
		LoginVO login2 = service.login(loginVO);
		session.setAttribute("loginVO", login2);
		mav.setViewName("redirect:/main");
		
		return mav;
	}
	
	@RequestMapping(value = "/login/login", method = RequestMethod.POST)
	public ModelAndView login(LoginVO loginVO,HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		if(loginVO.getRegBirthday() != null) {
			service.member(loginVO);
			return mav;
		}
		LoginVO login = service.login(loginVO);
		if(login != null) {
			session.setAttribute("loginVO", login);
			mav.setViewName("redirect:/main");
			return mav;
		} else {
			return mav;			
		}		
	}
	
	
	@RequestMapping("/login/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/");
		session.invalidate();		
		return mav;		
	}
	@RequestMapping("/login/withdraw")
	public ModelAndView withdraw(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		LoginVO loginVO = (LoginVO)session.getAttribute("loginVO");
		service.withdraw(loginVO.getId());		
		session.invalidate();
		mav.setViewName("redirect:/main");
		return mav;		
	}
	@RequestMapping(value = "/login/check", method = RequestMethod.POST)
	public String check(@RequestParam String eid) {
		String s = "";
		String regex = "^[_a-z0-9-]+(.[_a-z0-9-]+)*@(?:\\w+\\.)+\\w+$";
		Boolean check = eid.matches(regex);
		String login = service.check(eid);
		if (eid.equals(login)) {
			s = "중복된 아이디입니다.";
		}else if (!check) {
			s = "이메일 형식이 아닙니다.";
		}else {
			s = "사용 가능한 아이디입니다.";
		}
		
		return s;		
	}
	@RequestMapping(value = "/login/checknick", method = RequestMethod.POST)
	public String checknick(@RequestParam String nickname) {
		String s = "";
		String login = service.checkNick(nickname);
		if (nickname.equalsIgnoreCase(login)) {
			s = "중복된 닉네임 입니다.";
		}else {
			s = "사용 가능한 닉네임 입니다.";
		}
		
		return s;		
	}
	
	@RequestMapping(value = "/login/pCheck" , method = RequestMethod.POST)
	public String pCheck(@RequestParam String pw) {
		String s = "";
		String regex = "^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$";
		Boolean check = pw.matches(regex);
		if (!check) {
			s = "영문자,숫자,특수문자를 조합해주세요.";
		}else {
			s = "사용 가능한 비밀번호입니다.";
		}
		
		return s;		
	}
	@RequestMapping(value = "/login/pCheck1" , method = RequestMethod.GET)
	public void pCheck1() {
		
	}
}
