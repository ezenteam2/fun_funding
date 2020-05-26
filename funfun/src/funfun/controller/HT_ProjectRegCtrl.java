package funfun.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import funfun.service.HT_ProjectRegService;
import funfun.vo.MakerStudio;
import funfun.vo.MemberInfo;
import funfun.vo.ProOption;
import funfun.vo.ProRisk;
import funfun.vo.Project;

@Controller
@RequestMapping("/ProjectReg.do")
public class HT_ProjectRegCtrl {
	
	@Autowired(required=false)
	private HT_ProjectRegService service;
	
	// http://localhost:6080/funfun/ProjectReg.do?method=ready

	
<<<<<<< HEAD

	@RequestMapping(params="method=initPage")
	public String initPage(HttpServletRequest request, Model d) {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	
=======
>>>>>>> parent of 7f1046d... 1111
	@RequestMapping(params="method=ready")
	public String proReady(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicReq.jsp";
	}
	
	
	@RequestMapping(params="method=proCreate")
	public String proCreate(HttpServletRequest request, Model d, Project cre) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		cre.setMaker_code(memberinfo.getMaker_code());
		service.proCreate(cre);
		d.addAttribute("projectCode", service.getProjectCode());
		session.setAttribute("projectCode", service.getProjectCode());
		System.out.println("새로 만든 프로젝트 코드 : " + service.getProjectCode());
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	
	
	
	@RequestMapping(params="method=projectManage")
	public String projectManage(HttpServletRequest request, Model d, Project proInfo) {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	

	@RequestMapping(params="method=basicReq")
	public String proRegBasicReq(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicReq.jsp";
	}		
	
	
	@RequestMapping(params="method=basicInfo")
	public String proBasicInfo() {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_basicInfo.jsp";
	}

	@RequestMapping(params="method=basicInfoReg")
	public String proRegBasicInfoReg(HttpServletRequest request, Model d, Project cre) {
		HttpSession session = request.getSession();
		MemberInfo memberinfo = (MemberInfo)session.getAttribute("user");
		int projectCode = (int)session.getAttribute("projectCode");
		cre.setPro_code(projectCode);
		service.proBasicInfo(cre);
		d.addAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		session.setAttribute("makerInfo", service.makerInfo(memberinfo.getMem_code()));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	

	@RequestMapping(params="method=story")
	public String proRegStory(HttpServletRequest request, Model d) {
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_story.jsp";
	}
	
	@RequestMapping(params="method=storyReg")
	public String proStoryReg(HttpServletRequest request, Project cre) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		cre.setPro_code(projectCode);
		service.proStory(cre);
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	@RequestMapping(params="method=reward")
	public String proRegReward(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		d.addAttribute("optList", service.getProOptionList(projectCode));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_reward.jsp";
	}
	
	@RequestMapping(params="method=rewardUnitReg")
	public String proRegRewardUnitReg(HttpServletRequest request, Model d, ProOption cre) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		cre.setPro_code(projectCode);
		service.regProOption(cre);
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_reward.jsp";
	}
	
	@RequestMapping(params="method=rewardReg")
	public String proRegRewardReg(HttpServletRequest request, Model d, Project cre) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		cre.setPro_code(projectCode);
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_Ready.jsp";
	}
	
	
	@RequestMapping(params="method=risk")
	public String proRegRisk(HttpServletRequest request, Model d) {
		HttpSession session = request.getSession();
<<<<<<< HEAD
		int projectCode = (int)session.getAttribute("projectCode");
		System.out.println(projectCode);
		d.addAttribute("riskList", service.getProRiskList(projectCode));
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_risk.jsp";
	}
	
	@RequestMapping(params="method=riskUnitReg")
	public String proRiskUnitReg(HttpServletRequest request, Model d, ProRisk cre) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		cre.setPro_code(projectCode);
		service.regProRisk(cre);
		return "redirect:/ProjectReg.do?method=risk";
	}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
	
	@RequestMapping(params="method=projectRegister")
	public String projectRegister(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int projectCode = (int)session.getAttribute("projectCode");
		service.projectRegister(projectCode);
		return "redirect:/MakerStudio.do?method=myProject";
	}
=======
		return "WEB-INF\\views\\project_reg\\ht_user_w_MS_projectReg_risk.jsp";
	}
>>>>>>> parent of 7f1046d... 1111
=======
>>>>>>> parent of 5e57446... 1111
=======
>>>>>>> parent of 5e57446... 1111
=======
>>>>>>> parent of 5e57446... 1111

}
