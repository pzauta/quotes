import 'package:flutter/material.dart';
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
        children: quotes.map((quote) => Text("${quote.text} - ${quote.author}")).toList(),
      ),
    );
  }
}
