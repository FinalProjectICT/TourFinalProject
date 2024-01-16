package com.example.coding.domain;

public class Search extends Paging{
    private String tour_cate_code;	// 여행지 분류
	private String keyword;			// 검색어
	private String [] loc_cate_code; // 지역 코드 리스트
	public String Locs;

    public String getTour_cate_code() {
		return tour_cate_code;
	}

	public void setTour_cate_code(String tour_cate_code) {
		this.tour_cate_code = tour_cate_code;
	}

	public String [] getLoc_cate_code(){
		return loc_cate_code;
	}

	public void setLoc_cate_code(String [] loc_cate_code){
			this.loc_cate_code = loc_cate_code;
		
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String toString(){
		for (String string : loc_cate_code) {
			Locs = Locs + string;
		}return Locs;
	}
}
