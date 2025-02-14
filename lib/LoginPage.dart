import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup_page/SignupPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Center(
          child: Text(
            "Login",
            style: TextStyle(
              fontSize: 30,
              color: Colors.purple,
              fontWeight: FontWeight.w100,

            ),

          ),
        ),
      ),
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

           Padding(
             padding: EdgeInsets.only(top: 20,left: 20),
             child: Text(
              "Login Page",
              style: TextStyle(
                fontSize: 30,
                color: Colors.purple,
                fontWeight: FontWeight.w100,

              ),

                       ),
           ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),

                ),
                label: Text(
                  "Username",
                  style: TextStyle(color: Colors.redAccent),
                ),
                hintText: "Write your Username here",
                hintStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )


              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),

                  ),
                  label: Text(
                    "Password",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  hintText: "Write your password here",
                  hintStyle: TextStyle(color: Colors.black),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  )


              ),
            ),

          ),

          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,),
                child: InkWell(
                  splashColor: Colors.amber.withOpacity(.8),
                  onTap: (){},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.purple,
                        child: Center(child: Text("Login")),

                      )),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,),
                child: InkWell(
                  splashColor: Colors.amber.withOpacity(.8),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.purple,
                        child: Center(child: Text("Signin")),

                      )),
                ),
              ))

        ],
      ),

    );
  }
}
