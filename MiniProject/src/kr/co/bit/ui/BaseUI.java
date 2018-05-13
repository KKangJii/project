package kr.co.bit.ui;

import java.util.Scanner;

import kr.co.bit.service.EMemberService;
import kr.co.bit.service.EServiceFactory;
import kr.co.bit.service.VocaService;
import kr.co.bit.service.VocaServiceFactory;
import kr.co.bit.service.MyVocaService;
import kr.co.bit.service.MyVocaServiceFactory;

public abstract class BaseUI implements IEbaseUI{

	private Scanner sc;
	protected EMemberService EMService;
	protected VocaService VService;
	protected MyVocaService MYVService;
	
	public BaseUI() {
		sc = new Scanner(System.in);
		EMService = EServiceFactory.getInstance(); 
		VService = VocaServiceFactory.getInstance();
		MYVService = MyVocaServiceFactory.getInstance();
	}
	
	protected String scanStr(String msg) {
		System.out.print(msg);
		String str = sc.nextLine();
		return str;
	}
	
	protected int scanInt(String msg) {
		System.out.print(msg);
		return Integer.parseInt(sc.nextLine());
	}
	
}
