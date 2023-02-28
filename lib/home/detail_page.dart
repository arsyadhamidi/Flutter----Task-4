import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:task4/home/home_page.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  int _current = 0;
  final CarouselController _controller = CarouselController();

  final List _imageList = [
    'assets/images/produk2.png',
    'assets/images/produk4.png',
    'assets/images/produk5.png',
    'assets/images/produk7.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.withOpacity(0.2),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.arrow_left, color: Colors.grey,)),
          ),
        ),
        title: Text("Cleaners",
          style: TextStyle(
            fontFamily: "Mulish-Bold",
            color: Colors.black.withOpacity(0.5),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: badges.Badge(
                position: badges.BadgePosition.bottomStart(),
                badgeContent: Text(
                  '2', style: TextStyle(color: Colors.white),
                ),
                child: Icon(Icons.shopping_bag_outlined, color: Colors.grey,),
              )
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.grey.withOpacity(0.2),
        child: ListView(
          children: [
            Container(
              height: 200,
              child: Column(
                children: [
                  Expanded(
                    child: CarouselSlider(
                      carouselController: _controller,
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                      ),
                      items: _imageList.map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Image.asset(i),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: (Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : Colors.black)
                                  .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )
              ),
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                            "\$29.00",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.withOpacity(0.2),
                          child: IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.favorite, size: 20, color: Colors.pink,),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "White Gingseng Mask",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.withOpacity(1.0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow, size: 22),
                        Icon(Icons.star, color: Colors.yellow, size: 22),
                        Icon(Icons.star, color: Colors.yellow, size: 22),
                        Icon(Icons.star, color: Colors.yellow, size: 22),
                        Icon(Icons.star, color: Colors.grey, size: 22),
                        SizedBox(width: 10),
                        Text("4.8", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17
                        )),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                        "Masks for facial pore care Masks that "
                            "help clean clogged dirt in the pores, "
                            "and control oil levels on the face. "
                            "Helps clear pores clogging...",
                      style: TextStyle(fontSize: 15, fontFamily: "Mulish-Reguler"),
                    ),
                    SizedBox(height: 10),
                    Text("Read More", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Size",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 30),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Center(
                            child: Text('100 ml'),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Center(
                            child: Text(
                                '150 ml',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1),
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Center(
                            child: Text(
                              '200 ml',
                              style: TextStyle(
                                  color: Colors.grey
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/foto-comment.png"),
                            title: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Abdor Khaleed",
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                                Icon(Icons.star, color: Colors.yellow),
                              ],
                            ),
                            trailing: Text("SEE ALL",
                              style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 70),
                            child: Text(
                              "the product is very good, "
                                  "fits on my skin and also "
                                  "the delivery is very fast, the admin is...",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: MaterialButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  HomePage(isCart: true,)));
            },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          color: Colors.black,
          height: 50,
          child: Text(
            "Add To Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
