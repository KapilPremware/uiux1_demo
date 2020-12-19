import 'package:flutter/material.dart';
import 'package:uiux1_demo/screens/hive_localdb/hive_helper.dart';

class HiveDemo extends StatefulWidget {
  @override
  _HiveDemoState createState() => _HiveDemoState();
}

class _HiveDemoState extends State<HiveDemo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void saveData() async {
    var data = await HiveHelper.instance.dbPut('name', 'kapil');
    print(data);
    getData();
  }

  void getData() async {
    var data = await HiveHelper.instance.dbGet('name');
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hive db"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            RaisedButton(
              onPressed: () => saveData(),
              child: Text("Save Data"),
            ),
          ],
        ),
      ),
    );
  }
}
