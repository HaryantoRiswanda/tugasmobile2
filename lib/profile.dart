import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matcher/matcher.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage("assets/FP.jpg"),
            ),
            Text(
              "Haryanto Riswanda",
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 440.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  "+6283812528340",
                  style: TextStyle(
                      color: Colors.teal.shade900, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_city,
                  color: Colors.teal,
                ),
                title: Text(
                  "Bojongloa Kidul, Kota Bandung",
                  style: TextStyle(
                      color: Colors.teal.shade900, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.date_range,
                  color: Colors.teal,
                ),
                title: Text(
                  "Jakarta, 29 September 2000",
                  style: TextStyle(
                      color: Colors.teal.shade900, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.cast_for_education,
                  color: Colors.teal,
                ),
                title: Text(
                  "Sekolah Tinggi Teknologi Bandung",
                  style: TextStyle(
                      color: Colors.teal.shade900, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
