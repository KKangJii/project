package kr.co.bit.service;

/** MyVocaDAO, 나만의 단어장을 위한 service에 해당하는 factory */

public class MyVocaServiceFactory {

	private final static MyVocaService instance = new MyVocaService(); // 단어 DAO와 연결하기 위한 Service

	public static MyVocaService getInstance() {
		return instance;
	}
}