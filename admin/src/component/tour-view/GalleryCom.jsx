import React, { useState, useEffect } from "react";
import axios from "axios";
import GalleryCard from "../cards/GalleryCard";
import LightBox from "./LightBox";

function GalleryCom({ tourNum, baseUrl, images }) {
  const [openImg, setOpenImg] = useState(false);

  useEffect(() => {
    axios.get(`${baseUrl}/tour-view/${tourNum}/images`)
      .then((result) => {
        const imageUrls = result.data;  // API 응답이 이미지 URL을 포함한다고 가정합니다.
        setImageUrls(imageUrls);
      })
      .catch((error) => {
        console.error('이미지 가져오기 오류:', error);
      });
  }, [tourNum]);

  return (
    <div className="row">
      {images.map((image, index) => (
        <GalleryCard
          image={image.img}
          openImg={setOpenImg}
          id={index + 1}
          className={image.width}
          key={index + "img"}
        />
      ))}
      {openImg && (
        <LightBox
          key={index + "img"}
          images={images.map((image) => image.img)}
          activeImg={openImg}
          close={() => setOpenImg(false)}
        />
      )}
    </div>
  );
}

export default GalleryCom;
