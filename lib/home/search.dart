import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/filter.dart';
import 'package:task4/home/search_list.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  bool isSearch = false;

  void isSearchPage(){
    setState(() {
      isSearch = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.arrow_left, color: Colors.black,)),
          ),
        ),
        title: Container(
          height: 45,
          child: TextFormField(
            onTap: (){
              isSearchPage();
            },
            decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.1),
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 13),
              prefixIcon: Icon(CupertinoIcons.search),
              hintText: "find your favorite product...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              )
            ),
          ),
        ),
        actions: [
          isSearch ? Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.1),
              child: IconButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FilterPage()));
                  },
                  icon: Icon(Icons.list_outlined, color: Colors.grey,),
              ),
            ),
          ) : SizedBox(),
        ],
      ),
      body: isSearch ? SearchListPage() : ListView (
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Night Cream",
                      style: TextStyle(
                          color: Colors.grey,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    title: Text(
                      "Night Cream",
                      style: TextStyle(
                          color: Colors.grey,
                      ),),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    title: Center(
                      child: Text("See All", style: TextStyle(color: Colors.grey),),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Popular Search", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: EdgeInsets.all(15),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/produk2.png",),
                    ),
                  ),
                  title: Text(
                    "White Gingseng Purify Mask",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("1000 searches",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
                ListTile(
                  leading: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/produk4.png",),
                    ),
                  ),
                  title: Text(
                    "White Gingseng Purify Mask",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("500 searches",
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Popular Category", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/produk2.png",),
                    ),
                  ),
                  title: Text(
                    "Cleanser",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                ListTile(
                  leading: Container(
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset("assets/images/produk4.png",),
                    ),
                  ),
                  title: Text(
                    "Toner",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

