package kr.co.bit.main;

import kr.co.bit.ui.EMainUI;

public class EMain {

	public static void main(String[] args) {
		
		try {
			new EMainUI().execute();
		} catch (Exception e) {
			System.out.println("����!! ���α׷��� �����մϴ�..");
		}
	}

}
