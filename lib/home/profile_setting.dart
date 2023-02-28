import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/home_page.dart';

class ProfileSettingPage extends StatefulWidget {
  const ProfileSettingPage({Key? key}) : super(key: key);

  @override
  State<ProfileSettingPage> createState() => _ProfileSettingPageState();
}

class _ProfileSettingPageState extends State<ProfileSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage(isCart: false)));
                },
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                )),
          ),
        ),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/images/profile-setting.png"),
              trailing: Text(
                "Change photo",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Text("Name", style: TextStyle(color: Colors.grey)),
              trailing: Text("Maleek Kaleeb"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Text("Gender", style: TextStyle(color: Colors.grey)),
              trailing: Text("Male"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Text("Date of Birth", style: TextStyle(color: Colors.grey)),
              trailing: Text("10/10/2010"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Text("Phone Number", style: TextStyle(color: Colors.grey)),
              trailing: Text("0813-4599-4994"),
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Text("Email", style: TextStyle(color: Colors.grey)),
              trailing: Text("maleekkaleb@gmail.com"),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black,
              minWidth: double.infinity,
              height: 50,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
