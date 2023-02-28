import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/firstpage/login_page.dart';
import 'package:task4/home/home_page.dart';
import 'package:task4/home/order_status.dart';
import 'package:task4/home/profile_setting.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.0),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(isCart: false)));
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
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            ListTile(
              leading: Image.asset("assets/images/profile.png"),
              title: Text("Maalek Shobab",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Text("Silver member", style: TextStyle(color: Colors.grey),),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.doc_plaintext),
              title: Text("My orders"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderStatusPage()));
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.location_on_outlined),
              title: Text("Shopping Addres"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text("Payment Address"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.payments_outlined),
              title: Text("My Vourcher"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){},
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileSettingPage()));
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text("Logout",
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
            Divider(
              thickness: 2,
            ),
            ListTile(
              title: Text(
                  "Version 3.7.0", style: TextStyle(color: Colors.grey),
              ),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
