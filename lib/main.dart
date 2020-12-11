import 'package:flutter/material.dart';
import 'package:uiux1_demo/screens/dashboard.dart';
import 'package:uiux1_demo/screens/news_feed/add_news_feed.dart';
import 'package:uiux1_demo/screens/news_feed/news_feed.dart';
import 'package:uiux1_demo/screens/story.dart';
import 'package:uiux1_demo/screens/task_screen.dart';
import 'package:uiux1_demo/screens/member_search.dart';
import 'package:uiux1_demo/screens/scroll_to_load.dart';
import 'package:uiux1_demo/screens/avatar_selection.dart';
import 'package:uiux1_demo/screens/sliver_appbar.dart';
import 'package:uiux1_demo/screens/appbar_tabbar.dart';
import 'package:uiux1_demo/screens/scratch_list.dart';
import 'package:uiux1_demo/screens/refer.dart';
import 'package:uiux1_demo/screens/withdraw.dart';

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
        '/avatarSelection' : (context) => AvatarSelection(),
        '/sliverAppbar' : (context) => SliverAppBarScreen(),
        '/appBarTabBar' : (context) => AppBarTabBar(),
        '/scratchList' : (context) => ScratchList(),
        '/refer' : (context) => Refer(),
        '/withdraw' : (context) => Withdraw(),
      },
    );
  }
}
