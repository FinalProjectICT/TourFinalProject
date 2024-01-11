package com.example.coding.domain;

import java.util.List;

public class Search extends Paging{
    private String tour_cate_code;	// 여행지 분류
	private String keyword;			// 검색어
	private List<String> loc;

    public String getTour_cate_code() {
		return tour_cate_code;
	}

	public void setTour_cate_code(String tour_cate_code) {
		this.tour_cate_code = tour_cate_code;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<String> getLoc() {
		return loc;
	}

	public void setLoc(List<String> loc) {
		this.loc = loc;
	}
}
