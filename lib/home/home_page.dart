import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/cart.dart';
import 'package:task4/home/chat.dart';
import 'package:task4/home/search.dart';
import 'package:task4/home/profile.dart';
import 'package:task4/whitelist.dart';

class HomePage extends StatefulWidget {

  bool? isCart;

  HomePage({Key? key, required this.isCart}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> selectbody = <Widget>[
    HomePageSeconde(),
    CartPage(),
    WhiteListPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  void initState() {
    if(widget.isCart == true){
      _selectedIndex = 1;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: selectbody.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_crop_circle),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

class HomePageSeconde extends StatefulWidget {
  const HomePageSeconde({Key? key}) : super(key: key);

  @override
  State<HomePageSeconde> createState() => _HomePageSecondeState();
}

class _HomePageSecondeState extends State<HomePageSeconde> {

  List data = [
    {
      'title':'White Gingseng Mask',
      'subtitle': 'Radiance Refining',
      'harga': '\$29.00',
      'gambar': 'assets/images/produk2.png',
      'status': false,
    },
    {
      'title':'White Gingseng Mask',
      'subtitle': 'Radiance Refining',
      'harga': '\$29.00',
      'gambar': 'assets/images/produk4.png',
      'status': false,
    },
    {
      'title':'White Gingseng Mask',
      'subtitle': 'Radiance Refining',
      'harga': '\$29.00',
      'gambar': 'assets/images/produk5.png',
      'status': false,
    },
    {
      'title':'White Gingseng Mask',
      'subtitle': 'Radiance Refining',
      'harga': '29.00',
      'gambar': 'assets/images/produk7.png',
      'status': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset("assets/images/vector.png"),
          actions: [
            Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(70),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SearchPage()));
                        },
                        icon: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        )))),
          ],
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Herbal Clay",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontFamily: "Mulish-Bold",
                                  fontSize: 22),
                            ),
                            Text(
                              "Purifying Mask",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontFamily: "Mulish-Bold",
                                  fontSize: 22),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                onPressed: () {},
                                color: Colors.black,
                                child: Text(
                                  "Shop Now",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Image.asset("assets/images/produk1.png"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Text("All", style: TextStyle(fontSize: 17,
                    fontFamily: "Mulish-Bold")),
                    SizedBox(width: 20),
                    Text("Clearners",
                        style: TextStyle(fontSize: 17, color: Colors.grey)),
                    SizedBox(width: 20),
                    Text("Toner",
                        style: TextStyle(fontSize: 17, color: Colors.grey)),
                    SizedBox(width: 20),
                    Text("Essence",
                        style: TextStyle(fontSize: 17, color: Colors.grey)),
                    SizedBox(width: 20),
                    Text("Moisturizer",
                        style: TextStyle(fontSize: 17, color: Colors.grey)),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: 0.7
                  ),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Center(
                                child: Image.asset(
                                  data[index]['gambar']
                                ),
                              )
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              data[index]['title'], style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Text(
                              data[index]['subtitle'],
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data[index]['harga'],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                    onPressed: (){
                                      setState(() {
                                        data[index]['status'] = !data[index]['status'];
                                        // if(data[index]['status'] == true){
                                        //   data[index]['status'] = false;
                                        // }else{
                                        //   data[index]['status'] = true;
                                        // }
                                      });
                                    },
                                    icon: Icon(
                                        Icons.favorite, size: 20,
                                      color: data[index]['status'] == true
                                          ? Colors.pink
                                          : Colors.grey
                                    ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
