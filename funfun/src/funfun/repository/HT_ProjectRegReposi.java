package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.MakerStudio;
import funfun.vo.ProOption;
import funfun.vo.ProRisk;
import funfun.vo.Project;

@Repository
public interface HT_ProjectRegReposi {
	
	public MakerStudio makerInfo(int mem_code);
	public void proCreate(Project cre);
	public void proBasicInfo(Project cre);
	public int getProjectCode();
	public void proStory(Project cre);
	public ArrayList<ProOption> getProOptionList(int pro_code);
	public void regProOption(ProOption cre);
	public ArrayList<ProRisk> getProRiskList(int pro_code);
	public void regProRisk(ProRisk cre);
	public Project projectInfo(int pro_code);
	public void projectRegister(int pro_code);
}
