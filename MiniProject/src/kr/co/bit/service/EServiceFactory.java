package kr.co.bit.service;

/** ȸ�� DAO�� ���� EServiceFactory */

public class EServiceFactory {
	
	private final static EMemberService instance = new EMemberService(); //ȸ�� DAO�� �����ϱ� ���� Service
	
	public static EMemberService getInstance() {
		return instance;
	}
	
}
