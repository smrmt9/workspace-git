package com.vsc.Sample;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);

	@RequestMapping(value = "/w_novel_genre", method = RequestMethod.GET)
	public String w_novel_genre(Model model) {
		logger.info("웹소설 장르별 목록");
		
		return "w_novel_genre";
	}
	
	@RequestMapping(value = "/w_novel_week", method = RequestMethod.GET)
	public String w_novel_week(Model model) {
		logger.info("웹소설 요일별 목록");
		
		return "w_novel_week";
	}
	
	@RequestMapping(value = "/w_create", method = RequestMethod.GET)
	public String w_create(Model model) {
		logger.info("웹소설 생성하기");
		
		return "w_create";
	}
	
	@RequestMapping(value = "/w_create_vol", method = RequestMethod.GET)
	public String w_create_vol(Model model) {
		logger.info("웹소설 회차올리기");
		
		return "w_create_vol";
	}
	
	@RequestMapping(value = "/w_novel_mylist", method = RequestMethod.GET)
	public String w_novel_mylist(Model model) {
		logger.info("웹소설 내 작품목록");
		
		return "w_novel_mylist";
	}
	
	@RequestMapping(value = "/w_novel_mynId", method = RequestMethod.GET)
	public String w_novel_mynId(Model model) {
		logger.info("내 웹소설 작품클릭 시");
		
		return "w_novel_mynId";
	}
	
	@RequestMapping(value = "/w_novel_nId", method = RequestMethod.GET)
	public String w_novel_nId(Model model) {
		logger.info("웹소설 작품클릭 시");
		
		return "w_novel_nId";
	}
	
	@RequestMapping(value = "/w_novel_manage", method = RequestMethod.GET)
	public String w_novel_manage(Model model) {
		logger.info("내 웹소설 작품관리");
		
		return "w_novel_manage";
	}
	
	@RequestMapping(value = "/w_update", method = RequestMethod.GET)
	public String w_update(Model model) {
		logger.info("내 웹소설 작품수정");
		
		return "w_update";
	}
	
	@RequestMapping(value = "/w_update_vol", method = RequestMethod.GET)
	public String w_update_vol(Model model) {
		logger.info("내 웹소설 회차수정");
		
		return "w_update_vol";
	}
	
	@RequestMapping(value = "/w_novel/{nId}/{vol}", method = RequestMethod.GET)
	public String w_novel_read(Model model) {
		logger.info("웹소설 회차읽기");
		
		return "w_novel_read";
	}
	
	@RequestMapping(value = "/c_create", method = RequestMethod.GET)
	public String c_create(Model model) {
		logger.info("도전 작가글쓰기");
		
		return "c_create";
	}
	
	@RequestMapping(value = "/c_novel/{nId}", method = RequestMethod.GET)
	public String c_novel_read(Model model) {
		logger.info("도전 작가 글읽기");
		
		return "c_novel_read";
	}
	
	@RequestMapping(value = "/c_novel_nId", method = RequestMethod.GET)
	public String c_novel_nId(Model model) {
		logger.info("도전 작가 작품클릭");
		
		return "c_novel_nId";
	}
	
	@RequestMapping(value = "/c_novel_manage", method = RequestMethod.GET)
	public String c_novel_manage(Model model) {
		logger.info("도전 작가 내 웹소설 관리");
		
		return "c_novel_manage";
	}
	
	@RequestMapping(value = "/c_novel_mylist", method = RequestMethod.GET)
	public String c_novel_mylist(Model model) {
		logger.info("도전 작가 내 소설목록");
		
		return "c_novel_mylist";
	}
	
	@RequestMapping(value = "/c_novel_list", method = RequestMethod.GET)
	public String c_novel_list(Model model) {
		logger.info("도전 작가 내 소설목록");
		
		return "c_novel_list";
	}
	
	@RequestMapping(value = "/relay_list", method = RequestMethod.GET)
	public String relay_list(Model model) {
		logger.info("릴레이 소설목록");
		
		return "relay_list";
	}
	
	@RequestMapping(value = "/relay_nId", method = RequestMethod.GET)
	public String relay_nId(Model model) {
		logger.info("릴레이 소설읽기");
		
		return "relay_nId";
	}
	
	@RequestMapping(value = "/best_seller", method = RequestMethod.GET)
	public String best_seller(Model model) {
		logger.info("서점 베스트");
		
		return "best_seller";
	}
	
	@RequestMapping(value = "/best_loan", method = RequestMethod.GET)
	public String best_loan(Model model) {
		logger.info("도서관 베스트");
		
		return "best_loan";
	}
	
	@RequestMapping(value = "/review_list", method = RequestMethod.GET)
	public String review_list(Model model) {
		logger.info("리뷰 목록");
		
		return "review_list";
	}
	
	@RequestMapping(value = "/review_write", method = RequestMethod.GET)
	public String review_write(Model model) {
		logger.info("리뷰 작성");
		
		return "review_write";
	}
	
	@RequestMapping(value = "/review_view", method = RequestMethod.GET)
	public String review_view(Model model) {
		logger.info("리뷰 읽기 및 책 소개");
		
		return "review_view";
	}
	
	
	//--------
	@RequestMapping(value = "/w_write", method = RequestMethod.GET)
	public String w_write(Model model) {
		logger.info("웹소설 작품올리기");
		
		return "w_write";
	}
	
	@RequestMapping(value = "/f_write", method = RequestMethod.GET)
	public String g_free(Model model) {
		logger.info("자유 글쓰기 ");
		
		return "f_write";
	}
	
}
