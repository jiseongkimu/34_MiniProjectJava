package kr.co.ezenac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezenac.beans.BoardInfoBean;
import kr.co.ezenac.dao.TopMenuDao;

@Service
public class TopMenuService {
	//DAO 메소드 호출해서 가져온 정보로 요청된 처리를 수행
	
	@Autowired
	private TopMenuDao topMenuDao;
	
	public List<BoardInfoBean> getTopMenuList(){
		List<BoardInfoBean> topMenuList = topMenuDao.getTopMenuList();
		return topMenuList;
	}

}
