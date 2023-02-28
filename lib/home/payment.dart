import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/home_page.dart';
import 'package:task4/home/order_status.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
        title: Text("Payment", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Payment Deadline"),
                Text("24:00:00", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Bank BSI"),
                Image.asset("assets/images/bsi.png"),
              ],
            ),
            SizedBox(height: 10),
            Text("Account Number"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("083738408234702302", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("salin"),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Payment", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("\$520.000", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              ],
            ),
            Spacer(),
            MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(isCart: false)));
                },
              minWidth: double.infinity,
              color: Colors.black,
              height: 50,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text("Buy Again", style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 10),
            MaterialButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OrderStatusPage()));
              },
              minWidth: double.infinity,
              color: Colors.white,
              height: 50,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text("Check Status", style: TextStyle(color: Colors.black),),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
