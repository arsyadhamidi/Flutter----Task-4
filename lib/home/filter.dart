import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/home/search_list.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  List iscategory = [
    {
      'category': 'Most popular',
      'background': false,
      'border': false,
    },
    {
      'category': 'The latest',
      'background': false,
      'border': false,
    },
    {
      'category': 'Highest price',
      'background': false,
      'border': false,
    },
    {
      'category': 'Lowest price',
      'background': false,
      'border': false,
    },
  ];

  List isPrice = [
    {'price': 'Minimal'},
    {'price': 'Maximum'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
        title: Text(
          "Filter",
          style: TextStyle(color: Colors.black, fontFamily: "Mulish-Bold"),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Reset",
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: "Mulish-Bold",
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 25),
            child: Text(
              "Category",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
            child: GridView.builder(
              itemCount: iscategory.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 2.0),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        iscategory[index]['border'] =
                            !iscategory[index]['border'];
                        iscategory[index]['background'] =
                            !iscategory[index]['background'];
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: iscategory[index]['border'] == true
                                ? Colors.black.withOpacity(0.5)
                                : Colors.grey.withOpacity(0.1),
                          ),
                          color: iscategory[index]['background'] == true
                          ? Colors.white
                          : Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          iscategory[index]['category'],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: Text("Price",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 18,
                )
            ),
          ),
          GridView.builder(
            itemCount: isPrice.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              childAspectRatio: 2.0
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.1),
                    border: Border.all(color: Colors.grey.withOpacity(0.2)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    onPressed: (){},
                    child: Text(isPrice[index]['price']),
                  ),
                ),
              );
            },
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              width: double.infinity,
              height: 50,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Colors.black,
                onPressed: () {
                  // isSavePage();
                  Navigator.pop(context);
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
