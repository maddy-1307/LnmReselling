import 'package:flutter/material.dart';
import 'package:lnm_reselling/pages/HomeScreen.dart';
import 'package:lnm_reselling/pages/SignUpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email = "";
  String password= "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: double.infinity,
                child: Image.network('https://indocrypt2021.lnmiit.ac.in/images/lnmiitlogo.jpg'),
              ),
              SizedBox(height:35),
              Container(
                child:
                Column(
                  children: [
                    Container(

                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter a email',
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                            borderRadius: BorderRadius.all(Radius.circular(32.0)),
                          ),
                        ),
                      //  kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
                      ),
                    ),
                    SizedBox(height: 25,),

                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        password = value;
                      },
                       decoration:InputDecoration(
                         hintText: 'Enter a password',
                         contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
                         ),
                         enabledBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
                         ),
                         focusedBorder: OutlineInputBorder(
                           borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
                           borderRadius: BorderRadius.all(Radius.circular(32.0)),
                         ),
                       ),

                    ),
      Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Material(
            elevation: 5.0,
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30.0),
            child: MaterialButton(
              onPressed: () async {

                try{
             final newUser=await  _auth.signInWithEmailAndPassword(email: email, password: password);
                if(newUser!=null){
                  Navigator.pushNamed(context, HomeScreen.id);
                }
                }
                catch(e){print(e);}

              },
              minWidth: 250.0,
              height: 42.0,
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New To this :'),
                        TextButton(onPressed:()=>Navigator.pushNamed(context, SignUpScreen.id),
                          child: Text('Create Account'),
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                          // backgroundColor: Colors.blue
                        ),),
                      ],
                    )
                  ],
                ),





             ),
            ],
          ),
        )
    );
  }
}