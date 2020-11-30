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
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, '/taskScreen');
              },
              child: Container(
                padding: EdgeInsets.all(20),
                color: Colors.blueAccent,
                child: Text(
                  "Task Screen 1",
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
