package kr.co.bit.mail.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.bit.login.service.LoginService;
import kr.co.bit.login.vo.LoginVO;
import kr.co.bit.mail.service.MailService;

@RestController
@RequestMapping("/sendMail")
public class MailController {
    
    @Autowired
    private LoginService service;
    
    
    private MailService mailService;
    
    public void setLoginService(LoginService service) {
    	this.service = service;
    }
 
    public void setMailService(MailService mailService) {
        this.mailService = mailService;
    }
    
    @RequestMapping("/check")
    public void checkEmail() {
    	
    }
    
 
    @RequestMapping(value = "/auth", method = RequestMethod.POST)
    public String sendMailAuth(HttpSession session, @RequestParam String email1, @RequestParam String birthdayCheck) {
    	ModelAndView mav = new ModelAndView();
    	String str = "";    			
        int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999 , RedirectAttributes ra
        String joinCode = String.valueOf(ran);
        session.setAttribute("joinCode", joinCode);
        
        LoginVO loginVO = new LoginVO();
        loginVO.setId(email1);
        loginVO.setRegBirthday(birthdayCheck);
        LoginVO login = mailService.checkMyInfo(loginVO);
        
        String subject = "Arte-Vision 임시 비밀번호 발급 안내 입니다.";
        StringBuilder sb = new StringBuilder();
        sb.append("귀하의 임시 비밀번호는 " + joinCode + " 입니다.");
        loginVO.setPassword(joinCode);
        
        if(login != null) {
        	service.updateInfo(loginVO);
        	if(mailService.send(subject, sb.toString(), "아이디", email1, null)) {
        		str = "귀하의 이메일 주소로 새로운 임시 비밀번호를 발송 하였습니다.";
        		return str;
        	}        	
        } else {
        	str = "일치하는 정보가 없습니다.";
        }
        
        return str;
    }
    // 회원가입 이메일 인증
    @RequestMapping(value = "/checkeid", method = RequestMethod.POST)
    public String sendMailcheck(@RequestParam String eidcheck) {
    	ModelAndView mav = new ModelAndView();
    	int ran = new Random().nextInt(100000) + 10000; // 10000 ~ 99999 , RedirectAttributes ra
    	String joinCode = String.valueOf(ran);
    	
    	String subject = "Arte-Vision 회원가입 인증번호 발급 안내 입니다.";
    	StringBuilder sb = new StringBuilder();
    	sb.append("귀하의 회원가입 인증번호는 " + joinCode + " 입니다.");
       	
    	mailService.send(subject, sb.toString(), "blackcat123590@gmail.com", eidcheck, null);   	   
    	
    	return joinCode;
    }
    @RequestMapping(value = "/checkeidForm", method = RequestMethod.POST)
    public String sendMailcheckForm(@RequestParam String check,@RequestParam String success) {
    	String str = "";
    	if(check.equals(success)) {
    		str = "인증번호 확인이 완료되었습니다.";
    	}else {
    		str = "인증번호가 다릅니다. 다시 한번 확인해주세요.";
    	}
    	
    	return str;
    }
 
}
