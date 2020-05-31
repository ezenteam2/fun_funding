package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import funfun.service.HT_MSService;
import funfun.service.MainService;
import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.MemberLogin;
import funfun.vo.Project;
import funfun.vo.storeQnA;

@Controller
@RequestMapping("/MakerStudio.do")
public class HT_MSCtrl {

	// http://localhost:6080/funfun/MakerStudio.do?method=makerReg
	// http://localhost:6080/funfun/MakerStudio.do?method=makerReg_done
	// http://localhost:6080/funfun/MakerStudio.do?method=myProject

	@Autowired(required=false)
	private HT_MSService service;

	
	
	@RequestMapping(params="method=makerReg")
	public String regForm(HttpServletRequest request) {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerReg.jsp";
	}
	
	@RequestMapping(params="method=makerReg_done")
	public String regDone(HttpServletRequest request,MakerStudio reg) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");

		reg.setMem_code(memberinfo.getMem_code());
		service.regMaker(reg);

		session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMaker_code()));

		System.out.println(memberinfo.getMem_email());
		MemberInfo newmemberinfo = service.getMemberInfo(memberinfo.getMem_email());
		session.setAttribute("user", newmemberinfo);
		System.out.println(newmemberinfo.getMaker_code());
		
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerReg_done.jsp";
	}
	
	@RequestMapping(params="method=myProject")
	public String myProjectList(HttpServletRequest request, Model d) {
		
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		
		
		if (memberinfo==null) {
			System.out.println("에러페이지 뜸???");
			return "WEB-INF\\views\\makerstudio\\ht_user_MS_non-member_error.jsp";
		} else {
			System.out.println(memberinfo.getMaker_code());
			
			if (memberinfo.getMaker_code()==-1) {
				return "WEB-INF\\views\\makerstudio\\ht_user_MS_non-maker_error.jsp";
				
			} else {
				System.out.println(memberinfo.getMaker_code());
				session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMaker_code()));
				d.addAttribute("list", service.myProjectList(memberinfo.getMem_code()));
				return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_myProject.jsp";

			}
		}
	}
	
	@RequestMapping(params="method=makerInfo")
	public String proRegMakerInfo() {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_makerInfo.jsp";
	}

	@RequestMapping(params="method=proCancel")
	public String proCancel() {
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_projectCancel.jsp";
	}
	
	@RequestMapping(params="method=proCancelSubmit")
	public String proCancelSubmit(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		service.projectCancel(projectCode);
		return "redirect:/MakerStudio.do?method=myProject";
	}

	@RequestMapping(params="method=proCurrnet")
	public String proCurrnet(HttpServletRequest request, int pro_code, Model d) {
		HttpSession session = request.getSession();
		session.setAttribute("projectCode", pro_code);
		int storeCode = service.getStoCode(pro_code);
		session.setAttribute("storeCode", storeCode);
		if (storeCode!=-1) {
			String stoRegDate = service.getStoRegDate(pro_code);
			session.setAttribute("stoRegDate", stoRegDate);
		} else {
			session.setAttribute("stoRegDate", null);
		}
		System.out.println(session.getAttribute("storeCode"));
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_proCurrent.jsp";
	}

	@RequestMapping(params="method=proQnAManage")
	public String proQnAManage(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		d.addAttribute("qnaList", service.proQnAList(projectCode));
		return "WEB-INF\\views\\makerstudio\\ht_user_w_MS_proQna.jsp";
	}

	@RequestMapping(params="method=proQnAAnsReg")
	public String proQnAAnsReg(int qna_code, storeQnA qna) {
		qna.setQna_code(qna_code);
		service.proQnAAnsReg(qna);
		return "redirect:/MakerStudio.do?method=proQnAManage";
	}
}
	
