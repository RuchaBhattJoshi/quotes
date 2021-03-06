

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
  home: QuotesList() ,
  )
  );
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text:' The older we get the greater importance we place on time spent with loved ones.'),
    Quote(author: 'Oscar Wilde', text:' The older we get the greater importance we place on time spent with loved ones.'),
    Quote(author: 'Oscar Wilde', text:' The older we get the greater importance we place on time spent with loved ones.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[200],
      appBar: AppBar(

        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
     )
    );
  }
}


