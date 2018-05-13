package kr.co.bit.service;

/** MyVocaDAO, ������ �ܾ����� ���� service�� �ش��ϴ� factory */

public class MyVocaServiceFactory {

	private final static MyVocaService instance = new MyVocaService(); // �ܾ� DAO�� �����ϱ� ���� Service

	public static MyVocaService getInstance() {
		return instance;
	}
}