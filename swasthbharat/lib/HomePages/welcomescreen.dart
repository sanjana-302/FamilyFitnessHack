import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swasthbharat/feed/addpost.dart';
import 'package:swasthbharat/feed/feed.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Page"),
        backgroundColor: Colors.orange[600],
      ),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width - 30,
        margin: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text("How may we help you?"),
            SizedBox(
              height: 300,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                    color: Colors.orange[600],
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AddPost()));
                    },
                    child: Text(
                      "Need",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black, width: 1),
                    color: Colors.orange[600],
                  ),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FeedPage()));
                    },
                    child: Text(
                      "Donate",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
