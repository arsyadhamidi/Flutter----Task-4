import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/home_page.dart';
import 'package:task4/home/chat_pribadi.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  List data = [
    {
      'gambar': 'assets/images/chat.png',
      'title': 'Kaleeb Store',
      'subtitle': 'Ok, please order it brother',
      'date': '2023-02-27'
    },
    {
      'gambar': 'assets/images/chat.png',
      'title': 'Fateeh Store',
      'subtitle': 'Ok, please order it brother',
      'date': '2023-02-27'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.0),
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
          "Chat",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
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
                    CupertinoIcons.search,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(data[index]['gambar']),
                    title: Text(data[index]['title'],
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    subtitle: Text(data[index]['subtitle'],
                      style: TextStyle(color: Colors.grey),),
                    trailing: Text(data[index]['date'],
                      style: TextStyle(color: Colors.grey),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPribadiPage()));
                    },
                  ),
                  Divider(
                    thickness: 2,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
