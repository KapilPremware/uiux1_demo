import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: [
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/taskScreen');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Task Screen",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/newsFeed');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "News Feed",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/story');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Story",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/memberSearch');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Member Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/scrollToLoad');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Scroll To Load",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/avatarSelection');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Avatar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/sliverAppbar');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "sliver AppBar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/appBarTabBar');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "AppBar TabBar",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/scratchList');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "scratch Card",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/refer');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Refer",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/withdraw');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Redeem",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/notification');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Notification",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/sqfLite_localdb');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "sqfLite",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/hive');
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.blueAccent,
                  child: Text(
                    "Hive DB Demo",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
