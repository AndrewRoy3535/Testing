import 'package:flutter/material.dart';

class Answar extends StatelessWidget {
  final Function selectHandler;
  final String answarText;

  Answar(this.selectHandler, this.answarText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answarText),
        onPressed: selectHandler,
      ),
    );
  }
}
