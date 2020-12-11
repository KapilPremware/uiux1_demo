import 'package:clipboard/clipboard.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Refer extends StatefulWidget {
  @override
  _ReferState createState() => _ReferState();
}

class _ReferState extends State<Refer> {

  void shareApp() async{
    //Text Share
    /*String title = 'Ui Ux App';
    String message = 'Join the Ui Ux Application. Download it right now! Click here to install https://rb.gy/lcvo6a';
    Share.text(
      title,
      message,
      'text/plain',
    );*/

    //Image Share
    final ByteData bytes = await rootBundle.load('assets/7121.jpg');
    await Share.file('esys image', 'esys.png', bytes.buffer.asUint8List(), 'image/png', text: 'My optional text.');
  }

  void copyCode(){
    FlutterClipboard.copy('ABCDG123').then(( value ) => print('copied'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          /*gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF220194),
              Color(0xFF563C79),
            ],
          ),*/
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "Refer your friends \nand Earn",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF220194),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            //SizedBox(height: 10),
            Image.asset(
              "assets/7121.jpg",
              height: 200,
            ),
            //SizedBox(height: 10),
            Column(
              children: [
                Text(
                  "Your friend gets 100 Times on sign up and,  you get 100 Times Points too every time!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF220194),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
                  decoration: BoxDecoration(
                    color: Color(0xFF563C79),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Your referral code",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "ABCDG123",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                        width: 30,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: copyCode,
                        child: Text(
                          "Copy \nCode",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //SizedBox(height: 20),
            InkWell(
              onTap: shareApp,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xFF563C79),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  "Invite Friend",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2,
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
