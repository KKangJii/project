package kr.co.bit.service;

/** Base���ܾ�DAO�� ���� VocaServiceFactory */

public class VocaServiceFactory {

	private final static VocaService instance = new VocaService(); // �ܾ� DAO�� �����ϱ� ���� Service

	public static VocaService getInstance() {
		return instance;
	}
}