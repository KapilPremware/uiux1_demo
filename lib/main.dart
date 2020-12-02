import 'package:flutter/material.dart';
import 'package:uiux1_demo/screens/dashboard.dart';
import 'package:uiux1_demo/screens/news_feed/add_news_feed.dart';
import 'package:uiux1_demo/screens/news_feed/news_feed.dart';
import 'package:uiux1_demo/screens/story.dart';
import 'package:uiux1_demo/screens/task_screen.dart';
import 'package:uiux1_demo/screens/member_search.dart';
import 'package:uiux1_demo/screens/scroll_to_load.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UIUX Demo",
      initialRoute: '/',
      routes: {
        '/' : (context) => Dashboard(),
        '/taskScreen' : (context) => TaskScreen(),
        '/newsFeed' : (context) => NewsFeed(),
        '/addNewsFeed' : (context) => AddNewsFeed(),
        '/story' : (context) => Story(),
        '/memberSearch' : (context) => MemberSearch(),
        '/scrollToLoad' : (context) => ScrollToLoad(),
      },
    );
  }
}
