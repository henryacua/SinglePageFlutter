import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class PhotoWidget extends StatelessWidget{

  List<String> photos = [
    "https://calvincolombia.vteximg.com.br/arquivos/ids/179741-650-709/K10K107606_BEH_1.jpg?v=637823710075800000",
    "https://calvincolombia.vteximg.com.br/arquivos/ids/179742-650-709/K10K107606_BEH_2.jpg?v=637823710097200000",
    "https://calvincolombia.vteximg.com.br/arquivos/ids/177692-650-709/J30J318691_BEH_1.jpg?v=637808023952700000",
    "https://calvincolombia.vteximg.com.br/arquivos/ids/177693-650-709/J30J318691_BEH_2.jpg?v=637808023968670000"
  ];

  PhotoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final slide = Container(
      child: _swiper(),
    );
    return slide;
  }

  Widget _swiper(){
    return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        width: 400,
        height: 200,
        child: Swiper(
          itemCount: 4,
          viewportFraction: 0.8,
          scale: 0.9,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(//Traer imagenes de internet
              photos[index],
              fit: BoxFit.fill,
            );
          },
        )
    );
  }
}