import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:uiux1_demo/screens/sqflite_localdb/database_helper.dart';

class SQFLiteLocalDB extends StatefulWidget {
  @override
  _SQFLiteLocalDBState createState() => _SQFLiteLocalDBState();
}

class _SQFLiteLocalDBState extends State<SQFLiteLocalDB> {
  TextEditingController txtName = TextEditingController();
  var formKey = GlobalKey<FormState>();

  List dataList = [];
  bool isEdit = false;
  int editId = 0;

  @override
  void initState() {
    // TODO: implement initState
    refreshData();
    super.initState();
  }

  void refreshData() async {
    var data = await DatabaseHelper.instance.queryAll();
    setState(() {
      dataList = data;
    });
  }

  void clearAll(){
    setState(() {
      txtName.clear();
      isEdit = false;
      editId = 0;
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
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: txtName,
                    validator: (val) {
                      if (val.isEmpty)
                        return 'Enter value';
                      else
                        return null;
                    },
                  ),
                  Row(
                    children: [
                      FlatButton(
                        onPressed: () async {
                          clearAll();
                        },
                        child: Text("Cancel"),
                        color: Colors.blue,
                      ),
                      SizedBox(width: 10),
                      FlatButton(
                        onPressed: () async {
                          if (formKey.currentState.validate()) {
                            if(isEdit){
                              int i = await DatabaseHelper.instance.update({
                                "_id": editId,
                                "name": txtName.text,
                              });
                              print("the inserted id is $i");
                            } else{
                              int i = await DatabaseHelper.instance.insert({
                                "name": txtName.text,
                              });
                              print("the inserted id is $i");
                            }
                            clearAll();
                            refreshData();
                          }
                        },
                        child: Text("${isEdit ? 'Update' : 'Insert'}"),
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: (){

                          },
                          child: Text(
                            "${dataList[index]["_id"]} ${dataList[index]["name"]}",
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.grey,),
                        onPressed: () async {
                          setState(() {
                            isEdit = true;
                            editId = dataList[index]["_id"];
                            txtName.text = dataList[index]["name"];
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red,),
                        onPressed: () async {
                          int i = await DatabaseHelper.instance
                              .delete(dataList[index]["_id"]);
                          print("the deleted id is $i");
                          refreshData();
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
