import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailOrder extends StatefulWidget {
  const DetailOrder({Key? key}) : super(key: key);

  @override
  State<DetailOrder> createState() => _DetailOrderState();
}

class _DetailOrderState extends State<DetailOrder> {
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
        title: Text("Detail Order", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              color: Colors.grey.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order Status"),
                          Text("Success", style:
                          TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order ID"),
                          Text("#00000123456")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Order Date"),
                          Text("2023-02-29")
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Text("Kaleeb Store",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset("assets/images/produk2.png"),
                        ),
                      ),
                      title: Text("White Gingseng Purify Mask",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("\$120.00 (1x)", style: TextStyle(fontSize: 16),),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text("Shipping Address",
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 17
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text("Kaleeb Rahmeen",
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 16
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(7),
                      child: Text("West Sumatera, Padang City 25127",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 7, bottom: 7),
                      child: Text("0813-4599-4994",
                          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey
                          )),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 7),
                      child: Text("Shipping Information", style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 10),
                      child: Text("Pos Indonesia - PSIDN123456", style: TextStyle(
                          fontSize: 16,fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: Text("2023-02-27 21:14", style: TextStyle(color: Colors.grey),),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 7),
                      child: Text("Payment Information", style: TextStyle(
                          fontSize: 18,fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Payment Method", style: TextStyle(
                              fontSize: 16,fontWeight: FontWeight.bold
                          ),),
                          Text("Paypal", style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping fee", style: TextStyle(
                              fontSize: 14,color: Colors.grey
                          ),),
                          Text("\$30.00", style:
                          TextStyle(fontSize: 14, color: Colors.grey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub total", style: TextStyle(
                              fontSize: 14,color: Colors.grey
                          ),),
                          Text("\$120.00", style:
                          TextStyle(fontSize: 14, color: Colors.grey),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 7, top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total", style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold
                          ),),
                          Text("\$120.00", style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            MaterialButton(
                onPressed: (){},
              color: Colors.black,
              height: 50,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text("Buy again", style: TextStyle(color: Colors.white),),
            )
          ]
        ),
      ),
    );
  }
}
