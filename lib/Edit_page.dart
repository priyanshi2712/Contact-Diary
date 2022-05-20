import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  TextEditingController t3=TextEditingController();
  TextEditingController t4=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Edit Contact"),
          ),
          body:Container(
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
                        child: Center(
                            child: Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 150,
                            )),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.only(top: 125,left: 225),
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
