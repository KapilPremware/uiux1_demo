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
      body: Container(
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
          ],
        ),
      ),
    );
  }
}
