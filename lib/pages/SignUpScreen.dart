import 'package:flutter/material.dart';
import 'package:lnm_reselling/pages/OtpScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';



import 'HomeScreen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = 'signUp_screen';
  static String verify="";

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
 String email="" ;
 String password="";
  String name="";
  String hostel="";
 // String mno="";
  var phone="";
  var countrycode="+91";

//TextEditingController countrycode=TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          child:
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
                        keyboardType: TextInputType.name,
                        textAlign: TextAlign.center,
                        onChanged: (value) {
                          name = value;
                        },
                        decoration: InputDecoration(
                          hintText: 'Enter Name',
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
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        email = value;
                      },
                      decoration:InputDecoration(
                        hintText: 'Enter a Email Address',
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

                    SizedBox(height: 25,),

                    TextField(
                      obscureText: true,
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        password= value;
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


                    SizedBox(height: 25,),

                    TextField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        hostel = value;
                      },
                      decoration:InputDecoration(
                        hintText: 'Enter Hostel',
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
                    SizedBox(height: 25,),

                    TextField(
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        phone=value;
                       // email = value;
                      },
                      decoration:InputDecoration(
                        hintText: ' Enter Mobile Number',
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
                        child: MaterialButton( //onPressed: (){Navigator.pushNamed(context, Myotp.id);},
                          onPressed: ()async{
                            //Navigator.pushNamed(context, Myotp.id);
                            await _auth.verifyPhoneNumber(verificationCompleted: (PhoneAuthCredential credential) {},
                              verificationFailed: (FirebaseAuthException e){},
                              codeSent: (String verificationId, int? resendToken){
                              SignUpScreen.verify=verificationId;
                             // Navigator.pushNamed(context, Myotp.id);},
                           //Navigator.push(context, MaterialPageRoute(builder: (context)=>Myotp(e_mail:email,p_assword:password),));},
                              Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => Myotp(
    e_mail: email,
    p_assword: password,
    ),
    ),
    );},
                              codeAutoRetrievalTimeout: (String verificationId){}, phoneNumber: '${countrycode+phone}',);
                            // PhoneAuthOptions.newBuilder(_auth)
                            //     .setPhoneNumber(phone) // Phone number to verify
                            //     .setTimeout(60L, TimeUnit.SECONDS) // Timeout and unit
                            //     .setActivity(this) // Activity (for callback binding)
                            //     .setCallbacks(callbacks) // OnVerificationStateChangedCallbacks
                            //     .build(),
                            // PhoneAuthProvider.verifyPhoneNumber(options);

                          },
                          minWidth: 250.0,
                          height: 42.0,
                          child: Text(
                            "Generate otp",
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
                        Text('Already Have an account :'),
                        TextButton(onPressed:()=>Navigator.pop(context),
                          child:
                          Text('Login to Account'),
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
        ), );
  }
}