import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));




class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote('oscar Wild', 'new strange Text'),
    Quote('oscar Wild1', 'new strange Text'),
    Quote('oscar Wild2', 'new strange Text'),
    Quote('oscar Wild3', 'new strange Text'),
    Quote('oscar Wild4', 'new strange Text'),
    Quote('oscar Wild5', 'new strange Text'),
    Quote('oscar Wild6', 'new strange Text'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
