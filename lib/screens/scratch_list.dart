import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class ScratchList extends StatefulWidget {
  @override
  _ScratchListState createState() => _ScratchListState();
}

class _ScratchListState extends State<ScratchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Wrap(
          runSpacing: 10,
          spacing: 10,
          children: [
            InkWell(
              onTap: () {
                scratchPopup(context);
              },
              child: Container(
                height: MediaQuery.of(context).size.width * 0.45,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey[400], width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/outerimage.png",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width * 0.45,
              width: MediaQuery.of(context).size.width * 0.45,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey[400], width: 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/newimage.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.20,
                    height: MediaQuery.of(context).size.width * 0.20,
                  ),
                  Column(
                    children: [
                      Text(
                        "1 Lakh",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "You won",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void scratchPopup(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.black.withOpacity(0.5),
      context: context,
      builder: (BuildContext context) {
        return ScratchPopupClass();
      },
    );
  }
}

class ScratchPopupClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SizedBox(height: 20),
          Scratcher(
            brushSize: 50,
            threshold: 50,
            color: Colors.red,
            image: Image.asset(
              "assets/outerimage.png",
              fit: BoxFit.fill,
            ),
            onChange: (value) => print("Scratch progress: $value%"),
            onThreshold: () => print("Threshold reached, you won!"),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.60,
              width: MediaQuery.of(context).size.width * 0.60,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/newimage.png",
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.width * 0.30,
                  ),
                  Column(
                    children: [
                      Text(
                        "₹ 500",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "You won",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Win up to ₹1,000",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "From Team Tez",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Earned for paying nitin rana ₹300",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}