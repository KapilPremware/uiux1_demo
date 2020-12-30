import 'package:flutter/material.dart';

class AvatarSelection extends StatefulWidget {
  @override
  _AvatarSelectionState createState() => _AvatarSelectionState();
}

class _AvatarSelectionState extends State<AvatarSelection>
    with TickerProviderStateMixin {
  TabController _tabController;
  String selectedAvatar = 'assets/avatar/1.png';
  String selectedFrame = 'assets/frame/frame1.png';

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

  List data = [
    'assets/avatar/1.png','assets/avatar/2.png','assets/avatar/3.png','assets/avatar/4.png','assets/avatar/5.png','assets/avatar/frame6.png','assets/avatar/7.png','assets/avatar/8.png','assets/avatar/9.png','assets/avatar/10.png'
  ];
  List frameList = [
    'assets/frame/frame1.png','assets/frame/frame3.png','assets/frame/frame4.png','assets/frame/frame5.png','assets/frame/frame6.png','assets/frame/frame7.png','assets/frame/frame8.png','assets/frame/frame9.png','assets/frame/frame10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.white,
                ),
                Image.network(
                  "https://img.freepik.com/free-vector/abstract-halftone-background_23-2148583453.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "$selectedAvatar",
                  height: 120,
                ),
                Image.asset(
                  "$selectedFrame",
                  height: 150,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: <Widget>[
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        ...data.map((e){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedAvatar = e;
                              });
                            },
                            child: Image.asset(
                              "$e",
                              height: 80,
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Wrap(
                      spacing: 15,
                      runSpacing: 15,
                      children: [
                        ...frameList.map((e){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                selectedFrame = e;
                              });
                            },
                            child: Image.asset(
                              "$e",
                              height: 100,
                            ),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                ),
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
