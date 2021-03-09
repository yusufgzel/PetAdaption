import 'package:pati/WelcomeScreens/sliderModel.dart';

class Type {
  String img;
  String text;

  Type({this.img, this.text}) {
    this.img = img;
    this.text = text;
  }

  void setImg(String getImg) {
    img = getImg;
  }

  String getImg() {
    return img;
  }

  void setText(String getText) {
    text = getText;
  }

  String getText() {
    return text;
  }

  List<SliderModel> getSlides() {
    List<SliderModel> slides = new List<SliderModel>();
    Type type = new Type();

    //1
    type.setText("Renkli Pati sayesinde bir çok evcil hayvanı arayabilirsiniz");
    type.setImg("asset/bird.png");

    type = new Type();
    type.setText("Renkli Pati sayesinde bir çok evcil hayvanı arayabilirsiniz");
    type.setImg("asset/bird.png");

    type = new Type();
    type.setText("Renkli Pati sayesinde bir çok evcil hayvanı arayabilirsiniz");
    type.setImg("asset/bird.png");

    type = new Type();
    type.setText("Renkli Pati sayesinde bir çok evcil hayvanı arayabilirsiniz");
    type.setImg("asset/bird.png");

    type = new Type();

    return slides;
  }
}
