import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class add_page extends StatefulWidget {
  const add_page({Key? key}) : super(key: key);

  @override
  _add_pageState createState() => _add_pageState();
}

class _add_pageState extends State<add_page> {
  @override
  Widget build(BuildContext context) {
    TextEditingController t1=TextEditingController();
    TextEditingController t2=TextEditingController();
    TextEditingController t3=TextEditingController();
    TextEditingController t4=TextEditingController();
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Add Contact"),
            actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.check))
            ],
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.all(30),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.only(top: 140  ,left: 145),
                        decoration: BoxDecoration(
                          shape : BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: t1,
                      decoration: InputDecoration(

                        border: OutlineInputBorder(),

                      //  Border.all(color: Colors.white),
                        label: Text("First Name"),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: t2,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Last Name"),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: t3,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Phone Number"),
                      ),
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: double.infinity,
                    child: TextField(
                      controller: t4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email"),
                      ),
                    ),

                  ),

                ],
              ),
            ),

          ),
        ));
  }
}
