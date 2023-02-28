import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPribadiPage extends StatefulWidget {
  const ChatPribadiPage({Key? key}) : super(key: key);

  @override
  State<ChatPribadiPage> createState() => _ChatPribadiPageState();
}

class _ChatPribadiPageState extends State<ChatPribadiPage> {
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
                  Navigator.pop(context);
                },
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                )),
          ),
        ),
        title: Row(
          children: [
            Image.asset("assets/images/chat-pribadi.png"),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Kaleeb Store", style: TextStyle(color: Colors.black),),
                Text("online", style: TextStyle(color: Colors.grey, fontSize: 13),),
              ],
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.black,
                  )),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("hello, is skincare still available ?"),
                      Text("10.00", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 250,
                        child: Text("hello too, there are still Bro please order"
                            "all the items are ready and they are still"
                            "long expiring"),
                      ),
                      Text("10.00", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50, top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 250,
                        child: Text("and there is also a discount too"),
                      ),
                      Text("10.00", style: TextStyle(color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 4,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.attachment),
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  ),
                  hintText: "Thank you very much..."
                ),
              ),
            ),
            Expanded(
              child: CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                    onPressed: (){},
                    icon: Icon(CupertinoIcons.arrow_right, color: Colors.white,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
