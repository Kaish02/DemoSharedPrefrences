import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe6e6e6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              foregroundImage: AssetImage("assets/logo.jpg"),
            ),
            SizedBox(height: 20,),
            Text("Teme Members",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 50,
              child: Text("Kaish Ansari",style:
                TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              decoration: BoxDecoration(
                color: Color(0xe28ab4f8),
                borderRadius: BorderRadius.circular(10),
              ),

            ),
            SizedBox(height: 5,),
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 50,
              child: Text("RajMohan",style:
                TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              decoration: BoxDecoration(
                color: Color(0xe28ab4f8),
                borderRadius: BorderRadius.circular(10),
              ),

            ),
            SizedBox(height: 5,),
            Container(
              alignment: Alignment.center,
              width: 250,
              height: 50,
              child: Text("Md Jahir",style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              decoration: BoxDecoration(
                color: Color(0xe28ab4f8),
                borderRadius: BorderRadius.circular(10),
              ),

            ),
          ],
        ),
      ),

    );
  }
}
