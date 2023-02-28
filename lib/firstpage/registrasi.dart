import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/firstpage/login_page.dart';

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({Key? key}) : super(key: key);

  @override
  State<RegistrasiPage> createState() => _RegistrasiPageState();
}

class _RegistrasiPageState extends State<RegistrasiPage> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(0.2),
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
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset("assets/images/vector.png"),
            SizedBox(height: 30),
            Container(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    hintText: "Full name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    hintText: "Confirm Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: check,
                    onChanged: (value) {
                      setState(() {
                        check = value!;
                      });
                    },
                  ),
                  Container(
                    width: 300,
                      child: Text(
                          "I agree with the Term and Condition and the Privace Policy",
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 340,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Text(
                  "Login", style: TextStyle(
                    color: Colors.white
                ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "or",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 50,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey)
              ),
              child: MaterialButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/google.png", scale: 30),
                    SizedBox(width: 10),
                    Text(
                      "Login With Google",
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      "Log in !",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
