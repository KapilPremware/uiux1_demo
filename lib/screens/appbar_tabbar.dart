import 'package:flutter/material.dart';

class AppBarTabBar extends StatefulWidget {
  @override
  _AppBarTabBarState createState() => _AppBarTabBarState();
}

class _AppBarTabBarState extends State<AppBarTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back,color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          elevation: 3,
          bottom: PreferredSize(
            child: Container(
              height: 110,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, from",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              "Amit Shah",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.person, size: 60,),
                      ],
                    ),
                  ),
                  TabBar(
                    indicatorColor: Colors.black,
                    labelColor: Colors.black,
                    tabs: <Widget>[
                      Tab(text: "First"),
                      Tab(text: "Second"),
                    ],
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(110),
          ),
        ),
        body: TabBarView(
          children: [
            Text("1 st"),
            Text("2 nd"),
          ],
        ),
      ),
    );
  }
}
