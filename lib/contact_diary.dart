import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class contact_diary extends StatefulWidget {
  const contact_diary({Key? key}) : super(key: key);

  @override
  _contact_diaryState createState() => _contact_diaryState();
}

class _contact_diaryState extends State<contact_diary> {
  @override
  Widget build(BuildContext context) {
    List Name = [
      "priya navadiya",
      "Mina sutariya",
      "Shruti miyani",
      "Dhruvi lukhi",
      "Rutva kalathiya",
      "Janvi Rabadiya",
      "Amisha ramani",
      "Archana sojitara",
      "Isha kakadiya",
      "Binal patel",
      "Bhargavi savani",
      "Dhruvi golakiya",
      "Mahi goyani",
      "Dipali Gujarati",
      "Hasti Kankotiya",
      "Hatvi Dholiya",
      "Himani Kikani",
      "Hiral Gadhiya",
      "Krishna Chauhan",
      "Mansi Madhani",
      "prachi Vavadiya",
      "Kajal Vaghasiya",
      "Krinal Lakhani",
      "Mahek Kukadiya",
      "Pratyuusha Navadiya",
      "Rajvi Nakarani",
      "Ritika Jasoliya",
      "Ritu Khut",
      "Ruchita Lathiya",
      "Rudri Dudhat",
      "Sanjana Nakrani",
      "Shradha Achariya",
      "slesha Vasoya",
      "Yashvi Kachadiya"
    ];

    List Number = [
      "9825164064",
      "9632856987",
      "7569842368",
      "9874563258",
      "9856325741",
      "7632589412",
      "9632458712",
      "9875632159",
      "9756321598",
      "7532156984",
      "9632587463",
      "9856324145",
      "9856321456",
      "7569852364",
      "8523654789",
      "9632145632",
      "9632587412",
      "9874563214",
      "9856321458",
      "9632145698",
      "9637531597",
      "9875612345",
      "9852145638",
      "9785236412",
      "9856321546",
      "9856321457",
      "7532548324",
      "7562185125",
      "9254621852",
      "9852145842",
      "9853156562",
      "9562265633",
      "9832323256",
      "7523032656",
    ];

    List save = [];

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Contact Diary"),
        //  centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
        child: ListView.builder(
          itemCount: Name.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {

                save.clear();

                String contactName = Name[index];
                String contactNumber = Number[index];

                save.add(contactName);
                save.add(contactNumber);


                Navigator.pushNamed(context, '/second', arguments: save);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.center,
                color: Colors.black,
                margin: EdgeInsets.all(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(Icons.account_circle,color: Colors.white,size: 45,),
                    ),
                    Container(
                      child: Text(
                        "${Name[index]}\n+91 ${Number[index]}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: Icon(Icons.call,color: Colors.green,size: 40,),
                    ),
                  ],
                ),

              ),
            );
          },
        ),
      ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, '/add');
           //   Name.add;
            },
            child: Icon(Icons.add),
          ),
    ),
    );
  }
}

