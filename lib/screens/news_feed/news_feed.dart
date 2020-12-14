import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uiux1_demo/model/feed.dart';
import 'package:uiux1_demo/provider/feed_provider.dart';

class NewsFeed extends StatefulWidget {
  @override
  _NewsFeedState createState() => _NewsFeedState();
}

class _NewsFeedState extends State<NewsFeed> {
  List dataList = [
    {
      "id": "1",
      "userId" : "1",
      "name": "Kapil R Singh",
      "img": "https://randomuser.me/api/portraits/women/17.jpg",
      "banner":
          "https://cdn.searchenginejournal.com/wp-content/uploads/2019/05/facebookvideoranking.png",
      "dec":
          "Our goal with News Feed is to show you the stories that matter most to you, every time you visit Facebook.",
      "date": DateTime.now(),
      "like": false,
    },
    {
      "id": "2",
      "userId" : "1",
      "name": "Kapil R Singh",
      "img": "https://randomuser.me/api/portraits/women/17.jpg",
      "banner":
      "https://cdn.searchenginejournal.com/wp-content/uploads/2019/05/facebookvideoranking.png",
      "dec":
      "Our goal with News Feed is to show you the stories that matter most to you, every time you visit Facebook.",
      "date": DateTime.now(),
      "like": false,
    },
    {
      "id": "3",
      "userId" : "2",
      "name": "Kapil R Singh",
      "img": "https://randomuser.me/api/portraits/women/17.jpg",
      "banner":
      "https://cdn.searchenginejournal.com/wp-content/uploads/2019/05/facebookvideoranking.png",
      "dec":
      "Our goal with News Feed is to show you the stories that matter most to you, every time you visit Facebook.",
      "date": DateTime.now(),
      "like": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    var count =
        Provider.of<FeedProvider>(context, listen: false).feedList.length;
    return Scaffold(
      appBar: AppBar(
        title: Text("News Feed"),
        actions: [
          Center(
            child: Text(
              "$count",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(15),
        itemCount: dataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.network(
                        "${dataList[index]["img"]}",
                        height: 40,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${dataList[index]["name"]}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "${dataList[index]["date"]}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "${dataList[index]["dec"]}",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    "${dataList[index]["banner"]}",
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.thumb_up,
                        color: dataList[index]["like"] ? Colors.blue : Colors.grey,
                      ),
                      onPressed: (){
                        setState(() {
                          dataList[index]["like"] = !dataList[index]["like"];
                        });
                        Feed feed = Feed(feedId: dataList[index]["id"], userId: dataList[index]["userId"]);
                        if(dataList[index]["like"]) {
                          Provider.of<FeedProvider>(context, listen: false)
                              .addFeedLike(feed);
                        } else {
                          Provider.of<FeedProvider>(context, listen: false)
                              .removeFeedLike(feed);
                        }
                      },
                    ),
                    SizedBox(width: 10),
                    Text(
                      "45",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 20),
                    Image.asset(
                      "assets/share.png",
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "3",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Divider(color: Colors.grey[600]),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addNewsFeed');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
