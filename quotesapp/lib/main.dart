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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        children: [
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 20),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800]
            ),
          ),
          SizedBox(height: 8),
          TextButton.icon(onPressed: (){}, icon: Icon(Icons.delete), label: Text('Delete'),)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes App'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: quotes.map((e) => quoteTemplate(e)).toList(),
        ),
      ),
    );
  }
}
