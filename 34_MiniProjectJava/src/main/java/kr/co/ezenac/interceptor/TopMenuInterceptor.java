package kr.co.ezenac.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.ezenac.beans.BoardInfoBean;
import kr.co.ezenac.service.TopMenuService;

public class TopMenuInterceptor implements HandlerInterceptor {
	
	// 인터셉터는 Bean 자동 주입이 안된다.
	
	private TopMenuService topMenuService;
	
	//자동 주입이 안되어 객체 생성 후 넣어준다.
	public TopMenuInterceptor(TopMenuService topMenuService) {
		this.topMenuService = topMenuService;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		List<BoardInfoBean> topMenuList = topMenuService.getTopMenuList();
		request.setAttribute("topMenuList", topMenuList);
		
		return true;
	}

}
