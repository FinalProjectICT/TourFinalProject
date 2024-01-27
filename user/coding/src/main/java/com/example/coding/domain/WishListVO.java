package com.example.coding.domain;

import lombok.Data;

@Data
public class WishListVO {

    private Integer wishlist_num;   // 찜번호
    private String user_id;         // 사용자 아이디
    private String tour_num;        // 여행지 번호

    private TourVO tourVO;          // TourVO



    public void setTour(TourVO tourVO){
        this.tourVO = tourVO;
    }


}
