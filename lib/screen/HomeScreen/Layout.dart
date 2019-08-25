import 'package:flutter/material.dart';
import 'Widgets/TitleSection.dart';
import 'Widgets/ButtonColumn.dart';
import 'Widgets/TextSection.dart';

class Layout extends StatelessWidget {
  Layout({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonColumn(color, Icons.call, 'CALL'),
          ButtonColumn(color, Icons.near_me, 'ROUTE'),
          ButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: Column(children: [
        Image.asset(
          'images/icon.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        buttonSection,
        textSection
      ]),
    );
  }
}
