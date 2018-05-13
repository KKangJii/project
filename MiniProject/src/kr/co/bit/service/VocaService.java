package kr.co.bit.service;

import java.util.List;

import kr.co.bit.dao.VocaDAO;
import kr.co.bit.vo.VocaVO;

/** Base영단어DAO를 위한 service */

public class VocaService {

	private VocaDAO dao;
	
	public VocaService() {
		dao = new VocaDAO();
	}

	//전체 단어를 가져오기 위한 서비스
	public List<VocaVO> bringAllVoca() {
		List<VocaVO> list = dao.bringAllVoca();
		return list;
	}
	
	//테마별 단어를 가져오기 위한 서비스
	public List<VocaVO> bringThemaVoca(String Thema) {
		List<VocaVO> list = dao.bringThemaVoca(Thema);
		return list;
	}
	
	public List<String> bringThemeList() {
		List<String> T_list = dao.bringThemaList();
		return T_list;
	}
	
}
