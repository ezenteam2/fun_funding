package funfun.repository;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import funfun.vo.RewardStore;
import funfun.vo.storeOption;

@Repository
public interface KB_RSReposi {
	public ArrayList<RewardStore> slist(RewardStore sch);
	
	public RewardStore sdetail(int sto_code);
	
	
}
