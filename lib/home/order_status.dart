import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/detail_order.dart';
import 'package:task4/home/rate.dart';

class OrderStatusPage extends StatefulWidget {
  const OrderStatusPage({Key? key}) : super(key: key);

  @override
  State<OrderStatusPage> createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends State<OrderStatusPage> {

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
                  Navigator.pop(context);
                },
                icon: Icon(
                  CupertinoIcons.arrow_left,
                  color: Colors.black,
                )),
          ),
        ),
        title: Text("Order", style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1)
                          ),
                          child: Icon(Icons.monetization_on_outlined),
                        ),
                        SizedBox(height: 10),
                        Text("Confirm", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    SizedBox(width: 42),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1)
                          ),
                          child: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
                        ),
                        SizedBox(height: 10),
                        Text("Proses", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    SizedBox(width: 42),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.1)
                          ),
                          child: Icon(Icons.motorcycle),
                        ),
                        SizedBox(height: 10),
                        Text("Deliver", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                    SizedBox(width: 42),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.black
                          ),
                          child: Icon(Icons.folder_open, color: Colors.white,),
                        ),
                        SizedBox(height: 10),
                        Text("Finish", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 130,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/images/produk2.png"),
                      ),
                    ),
                    title: Text("White Gingseng Purify Mask",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("\$120.00(1x)",
                        style: TextStyle(color: Colors.grey),),
                    ),
                    trailing: MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailOrder()));
                      },
                      color: Colors.black,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      child: Text("Buy again", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 130,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset("assets/images/produk2.png"),
                      ),
                    ),
                    title: Text("White Gingseng Purify Mask",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("\$120.00(1x)",
                        style: TextStyle(color: Colors.grey),),
                    ),
                    trailing: MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RatePage()));
                      },
                      color: Colors.black,
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(color: Colors.black)
                      ),
                      child: Text("Rate", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
