import 'package:flutter/material.dart';

class AvatarSelection extends StatefulWidget {
  @override
  _AvatarSelectionState createState() => _AvatarSelectionState();
}

class _AvatarSelectionState extends State<AvatarSelection>
    with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  List data = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "https://img.freepik.com/free-vector/abstract-halftone-background_23-2148583453.jpg",
                  width: MediaQuery.of(context).size.width,
                ),
                Center(
                  child: Image.asset(
                    "assets/avatar_256.png",
                    height: 150,
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    children: [
                      ...data.map((e){
                        return Image.asset(
                          "assets/avatar_256.png",
                          height: 50,
                        );
                      }).toList(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text("sign up"),
                )
              ]),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.only(left: 60),
              child: TabBar(
                tabs: [
                  Container(
                    width: 70.0,
                    child: new Text(
                      'Tab1',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    width: 75.0,
                    child: new Text(
                      'Tab2',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
                unselectedLabelColor: const Color(0xffacb3bf),
                indicatorColor: Color(0xFFffac81),
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                indicatorPadding: EdgeInsets.all(10),
                isScrollable: false,
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
