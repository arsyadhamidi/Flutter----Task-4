import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/success.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.arrow_left, color: Colors.grey,)),
          ),
        ),
        title: Text("Checkout", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Text(
                "Shipping To",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text("Office", style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("West Sumatera, Padang City 25127"),
                      Text("0813-4599-4994"),
                    ],
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Shipping To",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/images/paypal.png"),
                  ),
                  title: Text("Paypal", style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Courier",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/images/pos.png"),
                  ),
                  title: Text("Pos Indonesia", style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("REG - \$50.00 (2 working day)", style: TextStyle(color: Colors.grey),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Shopping List",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset("assets/images/produk2.png"),
                  ),
                  title: Text("White Gingseng Purify Mask", style: TextStyle(fontWeight: FontWeight.bold),),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Shipping fee", style: TextStyle(color: Colors.grey)),
                  Text("\$30.00", style: TextStyle(color: Colors.grey),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sub total", style: TextStyle(color: Colors.grey)),
                  Text("\$120.00", style: TextStyle(color: Colors.grey),),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("\$520.00", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 20),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SuccessPage()));
                },
                color: Colors.black,
                minWidth: double.infinity,
                height: 50,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text("Payment", style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ),
      ),

    );
  }
}
