package kr.co.bit.service;

/** Base영단어DAO를 위한 VocaServiceFactory */

public class VocaServiceFactory {

	private final static VocaService instance = new VocaService(); // 단어 DAO와 연결하기 위한 Service

	public static VocaService getInstance() {
		return instance;
	}
}