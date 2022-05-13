import 'package:flutter/material.dart';
import 'package:helloworld/switch_product.dart';
import 'photo_widget.dart';
import 'app_bar.dart';
import 'text_field.dart';
import 'switch_video.dart';
import 'bottom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: const myAppBar(),
        body: Column(
            children: [
              PhotoWidget(),
              TextsFields(),
              Video(),
              Product(),
              ButtonAdd(),
              //DescriptionPlace('Calvin Klein', 5, descriptionPlace),
              //Review(pathImage, details, name, comment),
            ]
        )
      )
    );
  }
}


