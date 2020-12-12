import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uiux1_demo/screens/sqflite_localdb/database_helper.dart';

class SQFLiteLocalDB extends StatefulWidget {
  @override
  _SQFLiteLocalDBState createState() => _SQFLiteLocalDBState();
}

class _SQFLiteLocalDBState extends State<SQFLiteLocalDB> {
  TextEditingController txtName = TextEditingController();

  List dataList = [];
  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  void getData() async{
    var data = await DatabaseHelper.instance.queryAll();
    setState(() {
      dataList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQF Lite"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextFormField(
              controller: txtName,
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index){
                  return Row(
                    children: [
                      Text("${dataList[index]["name"]}"),
                      Icon(Icons.delete),
                    ],
                  );
                },
              ),
            ),
            FlatButton(
              onPressed: () async {
                int i = await DatabaseHelper.instance.insert({
                  "name": "Kapil",
                });
                print("the inserted id is $i");
              },
              child: Text("Insert"),
              color: Colors.grey,
            ),
            FlatButton(
              onPressed: () async {
                List<Map<String, dynamic>> data =
                    await DatabaseHelper.instance.queryAll();
                print(data);
              },
              child: Text("List"),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () async {
                int i = await DatabaseHelper.instance.update({
                  "_id": 1,
                  "name": "Rajesh",
                });
                print("the updated id is $i");
              },
              child: Text("Update"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () async {
                int i = await DatabaseHelper.instance.delete(1);
                print("the deleted id is $i");
              },
              child: Text("Delete"),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
