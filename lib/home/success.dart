import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/payment.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PaymentPage()));
                  },
                  icon: Icon(Icons.close, color: Colors.grey,)),
            ),
          ),
        title: Text("Payment Confirmation", style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Spacer(),
            Image.asset('assets/images/success.png'),
            SizedBox(height: 30),
            Text("Payment Successfull",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 10),
            Text("Your payment was successfull", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 5),
            Text("Please see the trail of your order", style: TextStyle(color: Colors.grey),),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
