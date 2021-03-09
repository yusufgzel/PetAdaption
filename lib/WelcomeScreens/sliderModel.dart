import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("Renkli Pati sayesinde bir çok evcil hayvanı arayabilirsiniz");
  sliderModel.setTitle("Arayın");
  sliderModel.setImageAssetPath("asset/catWoman.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc("Merak ettiğiniz hayvanlar hakkında sorular sorabilirsiniz");
  sliderModel.setTitle("Sorular Sorun");
  sliderModel.setImageAssetPath("asset/dogWoman.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("RenkliPatide isterseniz bir hayvan sahiplenebilir veya kendi evcil hayvanınızı sahiplendirebilirsiniz");
  sliderModel.setTitle("Sahiplenin");
  sliderModel.setImageAssetPath("asset/dogMan2.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}