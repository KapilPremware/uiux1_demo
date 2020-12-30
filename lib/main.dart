import 'package:flutter/material.dart';
import 'package:uiux1_demo/provider/app_provider.dart';
import 'package:uiux1_demo/provider/feed_provider.dart';
import 'package:uiux1_demo/screens/dashboard.dart';
import 'package:uiux1_demo/screens/news_feed/add_news_feed.dart';
import 'package:uiux1_demo/screens/news_feed/news_feed.dart';
import 'package:uiux1_demo/screens/story.dart';
import 'package:uiux1_demo/screens/task_screen.dart';
import 'package:uiux1_demo/screens/member_search.dart';
import 'package:uiux1_demo/screens/scroll_to_load.dart';
import 'package:uiux1_demo/screens/avatar_selection.dart';
import 'package:uiux1_demo/screens/avatar_selection_new.dart';
import 'package:uiux1_demo/screens/sliver_appbar.dart';
import 'package:uiux1_demo/screens/appbar_tabbar.dart';
import 'package:uiux1_demo/screens/scratch_list.dart';
import 'package:uiux1_demo/screens/refer.dart';
import 'package:uiux1_demo/screens/withdraw.dart';
import 'package:uiux1_demo/screens/notification.dart';
import 'package:uiux1_demo/screens/sqflite_localdb/sqflite_localdb.dart';
import 'package:uiux1_demo/screens/hive_localdb/hive.dart';
import 'package:uiux1_demo/screens/share_earn.dart';
import 'package:provider/provider.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async{
  //for multi Provider
  Provider.debugCheckInvalidValueType = null;
  WidgetsFlutterBinding.ensureInitialized();

  //hive init
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _app = AppProvider();
  final _feed = FeedProvider();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppProvider>.value(
      value: _app,
      child: Consumer<AppProvider>(
          builder: (context, value, child) {
            return MultiProvider(
              providers: [
                Provider<FeedProvider>.value(value: _feed),

                ChangeNotifierProvider(create: (_) => FeedProvider()),
              ],
              child: MaterialApp(
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
                  '/avatarSelectionNew' : (context) => AvatarSelectionNew(),
                  '/sliverAppbar' : (context) => SliverAppBarScreen(),
                  '/appBarTabBar' : (context) => AppBarTabBar(),
                  '/scratchList' : (context) => ScratchList(),
                  '/refer' : (context) => Refer(),
                  '/withdraw' : (context) => Withdraw(),
                  '/notification' : (context) => AppNotification(),
                  '/sqfLite_localdb' : (context) => SQFLiteLocalDB(),
                  '/hive' : (context) => HiveDemo(),
                  '/shareEarn' : (context) => ShareEarn(),
                },
              ),
            );
          }
      ),
    );
  }
}
