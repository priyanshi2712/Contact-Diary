import 'package:contact_diary/page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Edit_page.dart';
import 'add_page.dart';
import 'contact_diary.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
  //    home: contact_diary(),
      routes: {
        '/': (context) => contact_diary(),
        '/second': (context) => page1(),
        '/add':(context)=>add_page(),
        '/Edit' :(context)=>Edit(),
      },
    )
  );
}
