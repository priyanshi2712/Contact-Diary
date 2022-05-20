import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'add_page.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  _page1State createState() => _page1State();
}

class _page1State extends State<page1> {

  @override
  Widget build(BuildContext context) {
    List save = ModalRoute.of(context)?.settings.arguments as List;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(child: Text("Block")),
                  PopupMenuItem(child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, '/Edit');
                      },
                      child: Text("Edit")),),
                  PopupMenuItem(child: Text("Favorites")),
                  PopupMenuItem(child: Text("Delete")),
                  PopupMenuItem(child: GestureDetector(
                      onTap : ()async{
                        Share.share("TEXT");
                      },
                      child: Text("share"))),
                  PopupMenuItem(child: Text("Delete calls from History")),
                ];
              })
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Center(
                  child: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 150,
              )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "${save[0]}",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              )),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Center(
                  child: Text(
                "+91 ${save[1]}",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white),
              )),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: ()async{
                      Uri phone=Uri(scheme: "tel",path :"${save[1]}");
                      await launch(phone.toString());
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(
                        Icons.call,
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Icon(
                      Icons.chat,
                      size: 30,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Icon(
                      Icons.videocam,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Icon(
                      Icons.email,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    ));
  }
}
