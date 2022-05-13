import 'package:flutter/material.dart';

class ButtonAdd extends StatefulWidget {
  const ButtonAdd({Key? key}) : super(key: key);

  @override
  State<ButtonAdd> createState() => _ButtonAddState();
}

class _ButtonAddState extends State<ButtonAdd> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    final buttonAdd = Container(
      margin: const EdgeInsets.only(
        top: 100,
        left: 30,
        right: 30,
      ),
      width: 700.0,
      height: 40.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.deepPurple,
        ),
        onPressed: () {},
        child: const Text('Crear producto'),
      ),
    );

    return buttonAdd;
  }
}