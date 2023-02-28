import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/checkout.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  bool selectAll = false;
  bool checkList = false;
  int _current = 0;

  void dataNilaiMax(){
    setState(() {
      _current++;
    });
  }

  void dataNilaiMin(){
    setState(() {
      _current--;
    });
  }



  List isCartList = [
    {
      'title': 'White Gingseng Purify Mask',
      'price': '\$120.00',
      'picture': 'assets/images/produk2.png',
      'check': false,
    },
    {
      'title': 'White Gingseng Purify Mask',
      'price': '\$120.00',
      'picture': 'assets/images/produk2.png',
      'check': false,
    },
    {
      'title': 'White Gingseng Purify Mask',
      'price': '\$120.00',
      'picture': 'assets/images/produk2.png',
      'check': false,
    },
    {
      'title': 'White Gingseng Purify Mask',
      'price': '\$120.00',
      'picture': 'assets/images/produk2.png',
      'check': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.withOpacity(0.1),
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
        title: Text("Cart", style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: [
            CheckboxListTile(
                activeColor: Colors.black,
                controlAffinity: ListTileControlAffinity.leading,
                value: checkList,
                title: Text("Select All", style: TextStyle(fontWeight: FontWeight.bold),),
                onChanged: (value) {
                  setState(() {
                    checkList = value!;
                  });
                },
            ),

          Expanded(
            child: ListView.builder(
              itemCount: isCartList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: CheckboxListTile(
                          activeColor: Colors.black,
                          controlAffinity: ListTileControlAffinity.leading,
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(isCartList[index]['title'],
                                  style: TextStyle(
                                      fontSize: 18,
                                    fontWeight: FontWeight.bold
                                  )
                                  ,),
                                width: 200,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.grey.withOpacity(0.5),
                                maxRadius: 15,
                                child: IconButton(
                                    onPressed: (){
                                      dataNilaiMin();
                                    },
                                    icon: Icon(
                                      Icons.remove, color: Colors.white,
                                      size: 15,
                                    ),
                                ),
                              ),
                              Text("${_current}"),
                              CircleAvatar(
                                backgroundColor: Colors.black,
                                maxRadius: 15,
                                child: IconButton(
                                  onPressed: (){
                                    dataNilaiMax();
                                  },
                                  icon: Icon(
                                    Icons.add, color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text(isCartList[index]['price'], style: TextStyle(
                            fontSize: 16,
                          ),),

                          value: checkList,
                          onChanged: (value) {
                            setState(() {
                              checkList = value!;
                            });
                          },
                        ),
                      ),
                    ),
                  );
                },
            ),
          ),

          SizedBox(height: 10,),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Select items(4)",
                        style: TextStyle(fontWeight: FontWeight.bold),),
                      Text("Total : \$120.00",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => CheckoutPage()));
                      },
                    color: Colors.black,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 50,
                    child: Text("Checkout", style: TextStyle(color: Colors.white),),
                    minWidth: double.infinity,
                  ),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
