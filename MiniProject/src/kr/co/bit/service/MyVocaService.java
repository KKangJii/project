package kr.co.bit.service;

import java.util.List;

import kr.co.bit.dao.MyVocaDAO;
import kr.co.bit.vo.VocaVO;

/** MyVocaDAO, 나만의 단어장을 위한 service */

public class MyVocaService {
private MyVocaDAO dao;
	
	public MyVocaService() {
		dao = new MyVocaDAO();
	}

	public void insertVoca(VocaVO myvoca) {
		dao.insertVoca(myvoca);
	}

	public List<VocaVO> bringThemaVoca(String thema) {
		List<VocaVO> list = dao.bringThemaVoca(thema);
		return list;
	}
	
	public void deleteVoca(){
		dao.deleteVoca();
	}
	
	public void deleteOneVoca(String English) {
		dao.deleteOneVoca(English);
	}

	public List<String> bringThemaList() {
		List<String> T_list = dao.bringThemaList();
		return T_list;
	}
	public List<VocaVO> bringAllVoca() {
		List<VocaVO> list = dao.bringAllVoca();
		return list;
	}
}
