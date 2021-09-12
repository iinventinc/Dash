import 'package:dash/Widgets/slide.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage(slideList[index].imageurl), fit: BoxFit.fill),
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          slideList[index].title,
          style:
              GoogleFonts.roboto(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
