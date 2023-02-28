import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:task4/home/home_page.dart';

class RatePage extends StatefulWidget {
  const RatePage({Key? key}) : super(key: key);

  @override
  State<RatePage> createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
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
          "Rate",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          // Spacer(),
          SizedBox(height: 20),
          Text(
            "Extraordinary",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "You rate Product 5 Stars",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 40,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 40,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 40,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 40,
              ),
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 40,
              ),
            ],
          ),
          SizedBox(height: 30),
          MaterialButton(
            onPressed: () {},
            child: DottedBorder(
              color: Colors.grey,
              dashPattern: [8, 10],
              strokeWidth: 2,
              radius: Radius.circular(10),
              padding: EdgeInsets.all(8),
              borderPadding: EdgeInsets.all(4),
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/upload-gambar.png"),
                    SizedBox(width: 10),
                    Text("Add Image", style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey.withOpacity(0.2),
                filled: true,
                hintText: "My review about this products...",
                border: OutlineInputBorder(
                  borderSide: BorderSide.none
                ),
              ),
              maxLines: 5,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              minWidth: double.infinity,
              color: Colors.black,
              height: 50,
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
