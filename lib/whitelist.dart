import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/detail_page.dart';
import 'package:task4/home/home_page.dart';

class WhiteListPage extends StatefulWidget {
  const WhiteListPage({Key? key}) : super(key: key);

  @override
  State<WhiteListPage> createState() => _WhiteListPageState();
}

class _WhiteListPageState extends State<WhiteListPage> {

  List data = [
    {
      'title': 'White Gingseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'gambar': 'assets/images/produk2.png',
      'harga': '\$29.00',
      'status': false,
    },
    {
      'title': 'White Gingseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'gambar': 'assets/images/produk4.png',
      'harga': '\$29.00',
      'status': false,
    },
    {
      'title': 'White Gingseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'gambar': 'assets/images/produk5.png',
      'harga': '\$29.00',
      'status': false,
    },
    {
      'title': 'White Gingseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'gambar': 'assets/images/produk7.png',
      'harga': '\$29.00',
      'status': false,
    },
    {
      'title': 'White Gingseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'gambar': 'assets/images/produk2.png',
      'harga': '\$29.00',
      'status': false,
    },
    {
      'title': 'White Gingseng Mask',
      'subtitle': 'Radiance Refining Mask',
      'gambar': 'assets/images/produk4.png',
      'harga': '\$29.00',
      'status': false,
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
          "Whitelist",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.1),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailPage()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Expanded(
                          child: Center(
                            child: Image.asset(data[index]['gambar']),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, left: 7, right: 7),
                        child: Text(data[index]['title'], style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 7, right: 7),
                        child: Text(data[index]['subtitle'], style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(data[index]['harga'],
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    data[index]['status'] = !data[index]['status'];
                                  });
                                },
                                icon: Icon(
                                    Icons.favorite, size: 17,
                                    color: data[index]['status'] == true
                                        ? Colors.pink
                                        : Colors.grey
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
