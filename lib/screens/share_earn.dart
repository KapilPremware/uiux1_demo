import 'package:flutter/material.dart';

class ShareEarn extends StatefulWidget {
  @override
  _ShareEarnState createState() => _ShareEarnState();
}

class _ShareEarnState extends State<ShareEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Share & Earn"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Share & Earn",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Share App with your friends. You both can earn up to total of 2000 per day.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 20),
                  Image.asset("assets/giftbox.png"),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Share App with everyone",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Image.network(
                  "https://thumbs.dreamstime.com/b/socializing-friends-share-link-flat-illustration-icons-infographics-landing-page-site-print-poster-eps-vector-178701788.jpg",
                  //height: 160,
                  width: 160,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Image.network(
                  "https://st3.depositphotos.com/35530942/37682/v/950/depositphotos_376824268-stock-illustration-online-registration-sign-concept-young.jpg",
                  //height: 160,
                  width: 160,
                ),
                Expanded(
                  child: Text(
                    "Get them to register on the app",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Earn money after they register and use the app",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Image.network(
                  "https://bpassiveincome.com/wp-content/uploads/2020/06/5522-1024x770.jpg",
                  //height: 160,
                  width: 160,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
