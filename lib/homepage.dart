// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final querry = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    padding: EdgeInsets.only(top: 30),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                    ),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/download.jpeg"),
              ),
              SizedBox(
                height: 45,
                child: Text(
                  'Bruce Wayne',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 25,
                child: Text(
                  'brucewayne@gmail.com',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 252, 217, 19), // Change this to your desired color
                ),
                child: Text("Upgrade to Premium"),
              ),
              SizedBox(
                height: 25,
              ),
              customWidget(
                icon: Icons.privacy_tip,
                text: "Privacy",
                siz: querry,
              ),
              customWidget(
                icon: Icons.history,
                text: "Purchase history",
                siz: querry,
              ),
              customWidget(
                icon: Icons.help,
                text: "Help and support",
                siz: querry,
              ),
              customWidget(
                icon: Icons.settings,
                text: "Settings",
                siz: querry,
              ),
              customWidget(
                icon: Icons.person_add_alt_sharp,
                text: "Invite a friend",
                siz: querry,
              ),
              customWidget(
                icon: Icons.logout,
                text: "Log out",
                siz: querry,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customWidget(
      {required String text, required IconData icon, required Size siz}) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.black12, borderRadius: BorderRadius.circular(25)),
        height: siz.height / 14,
        width: siz.width / 1.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                SizedBox(
                  width: 20,
                ),
                Text(text),
              ],
            ),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
