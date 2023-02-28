import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task4/firstpage/registrasi.dart';
import 'package:task4/home/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  void initState() {
    super.initState();
  }

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
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(CupertinoIcons.arrow_left, color: Colors.black,)),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Spacer(),
            // Logo
            Image.asset("assets/images/vector.png"),
            SizedBox(height: 30),
            // TextFormField Email
            Container(
              width: 350,
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.withOpacity(0.1),
                  filled: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 20
                  ),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none
                  )
                ),
              ),
            ),
            SizedBox(height: 20),
            // TextFormField Password
            Container(
              width: 350,
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.eye_slash),
                    fillColor: Colors.grey.withOpacity(0.1),
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 20
                    ),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none
                    )
                ),
              ),
            ),
            SizedBox(height: 25),
            // Material Button Login
            Container(
              width: 340,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(50),
              ),
              child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>HomePage(
                          isCart: false,
                        )));
                  },
                child: Text(
                  "Login", style: TextStyle(
                  color: Colors.white
                ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // Text Or
            Text(
              "or",
              style: TextStyle(
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 20),
            // Material Button Login Dengan Google
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
            // Text Don't Have an Account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "Don't have your an account ?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrasiPage()));
                    },
                    child: Text(
                      "Register !",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
