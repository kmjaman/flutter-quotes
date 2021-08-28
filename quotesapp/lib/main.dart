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
    Quote(text: 'All our dreams can come true, if we have the courage to pursue them.', author: 'Walt Disney'),
    Quote(text: 'The secret of getting ahead is getting started.', author: 'Mark Twain'),
    Quote(text: 'It’s hard to beat a person who never gives up.', author: 'Babe Ruth'),
    Quote(text: 'I wake up every morning and think to myself, ‘how far can I push this company in the next 24 hours.', author: 'Leah Busque'),
    Quote(text: 'If people are doubting how far you can go, go so far that you can’t hear them anymore.', author: 'Michele Ruiz'),
    Quote(text: 'Write it. Shoot it. Publish it. Crochet it, sauté it, whatever. MAKE.', author: 'Joss Whedon'),
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
