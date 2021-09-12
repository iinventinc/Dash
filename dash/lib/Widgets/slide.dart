class Slide {
  final String imageurl;
  final String title;

  Slide({required this.imageurl, required this.title});
}

final slideList = [
  Slide(
      imageurl: 'assets/images/il1.png', title: 'Get a ride at your doorstep'),
  Slide(imageurl: 'assets/images/il2.png', title: 'Send Items to loved ones'),
  Slide(imageurl: 'assets/images/il3.png', title: 'Become a delivery personnel')
];
