import 'dart:async';

import 'package:flutter/material.dart';

class ScrollToLoad extends StatefulWidget {
  @override
  _ScrollToLoadState createState() => _ScrollToLoadState();
}

class _ScrollToLoadState extends State<ScrollToLoad> {
  ScrollController controller;
  List<String> items = new List.generate(20, (index) => 'Hello $index');
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    controller = new ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Scroll To Load"),
      ),
      body: new Scrollbar(
        child: Column(
          children: [
            Expanded(
              child: new ListView.builder(
                padding: EdgeInsets.all(10),
                controller: controller,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(
                      items[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                },
                itemCount: items.length,
              ),
            ),
            Container(
              height: isLoading ? 50.0 : 0,
              color: Colors.transparent,
              child: Center(
                child: new CircularProgressIndicator(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _scrollListener() {
    print(controller.position.extentAfter);
    if (controller.position.extentAfter < 100) {
      setState(() {
        isLoading = true;
      });
      Timer(Duration(seconds: 2),(){
        setState(() {
          items.addAll(new List.generate(20, (index) => 'Inserted $index'));
          isLoading = false;
        });
      });
    }
  }
}
