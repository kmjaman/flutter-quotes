import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  const Quotes({ Key? key }) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List quotes = [
    Quote(text: 'The sky is blue', author: 'Neil'),
    Quote(text: 'The Sun rises in the west', author: 'Tom'),
    Quote(text: 'The Earth is round', author: 'John'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((e) => Text('${e.text} - ${e.author}')).toList(),
      ),
    );
  }
}
