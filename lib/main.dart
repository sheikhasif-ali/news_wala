import 'package:flutter/material.dart';
import 'package:news_app/views/news_list.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NewsListView()));
}

