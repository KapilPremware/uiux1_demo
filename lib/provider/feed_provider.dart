import 'package:flutter/material.dart';
import 'package:uiux1_demo/model/feed.dart';

class FeedProvider with ChangeNotifier{
  String name = "";
  List<Feed> feedList = [];

  Future<bool> addFeedLike(Feed feed) async {
    feedList.add(feed);
    notifyListeners();
    return true;
  }

  Future<bool> removeFeedLike(Feed feed) async {
    feedList.removeWhere((element) => element.feedId == feed.feedId && element.userId == feed.userId);
    notifyListeners();
    return true;
  }
}