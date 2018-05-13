package kr.co.bit.service;

/** 회원 DAO를 위한 EServiceFactory */

public class EServiceFactory {
	
	private final static EMemberService instance = new EMemberService(); //회원 DAO와 연결하기 위한 Service
	
	public static EMemberService getInstance() {
		return instance;
	}
	
}
