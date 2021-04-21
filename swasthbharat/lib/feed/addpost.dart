import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange[600],
        title: Text("Add Post"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              height: 350,
              width: MediaQuery.of(context).size.width - 30,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.orange[600], Colors.yellow]),
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Write about your needs briefly and upload the images of your reports for verification purpose",
                      style:
                          GoogleFonts.roboto(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Heading"),
                  ),
                  Container(
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 10,
                      decoration: InputDecoration(
                        hintText: "Content",
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.orange[600], Colors.yellow]),
                  border: Border.all(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              height: 40,
              width: 150,
              child: FlatButton(
                onPressed: () {},
                child: Text("Upload Reports"),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.orange[600], Colors.yellow]),
                  border: Border.all(color: Colors.black, width: 0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: FlatButton(
                onPressed: () {},
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
