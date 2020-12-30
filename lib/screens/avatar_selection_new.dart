import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AvatarSelectionNew extends StatefulWidget {
  @override
  _AvatarSelectionNewState createState() => _AvatarSelectionNewState();
}

class _AvatarSelectionNewState extends State<AvatarSelectionNew>
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
    'assets/avatar/1.png',
    'assets/avatar/2.png',
    'assets/avatar/3.png',
    'assets/avatar/4.png',
    'assets/avatar/5.png',
    'assets/avatar/frame6.png',
    'assets/avatar/7.png',
    'assets/avatar/8.png',
    'assets/avatar/9.png',
    'assets/avatar/10.png'
  ];
  List frameList = [
    'assets/frame/frame6.png',
    'assets/frame/frame7.png',
    'assets/frame/frame8.png',
    'assets/frame/frame9.png',
    'assets/frame/frame10.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          //alignment: Alignment.center,
          children: [
            Image.network(
              "https://img.freepik.com/free-vector/abstract-halftone-background_23-2148583453.jpg",
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
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
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 130,
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Select Avatar",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 70,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: data.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedAvatar = data[index];
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      "${data[index]}",
                                      height: 50,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 130,
                      color: Colors.grey[200],
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Select Frame",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 70,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: frameList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedFrame = frameList[index];
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Image.asset(
                                      "${frameList[index]}",
                                      height: 50,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  /*Expanded(
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
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
