import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:lnm_reselling/pages/SignUpScreen.dart';

import 'HomeScreen.dart';
class Myotp extends StatefulWidget {
  static const String id = 'Otp_screen';
  final String e_mail;
  final String p_assword;
  const Myotp({super.key,required this.e_mail, required this.p_assword});
  //Myotp({Key? key, required this.e_mail, required this.p_assword}) : super(key: key);


  @override
  State<Myotp> createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  final _auth = FirebaseAuth.instance;

 // get p_assword => null;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code="";
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Verification',style: TextStyle(fontSize: 26),),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Enter the OTP send to your Registered Mobile Number ',style: TextStyle(fontSize: 28,color: Colors.black),),

        SizedBox(height: 30,),

        Pinput(

          length: 6,
         // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
          showCursor: true,
          onChanged:(value){
            code=value;
          },

        ),


SizedBox(height: 30,),

        SizedBox(
          height: 35,
          width: double.infinity,
           child:
        ElevatedButton(onPressed: ()async{
          try {
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: SignUpScreen.verify, smsCode: code);
           final newuser= await _auth.createUserWithEmailAndPassword(email: widget.e_mail, password:widget.p_assword);
            Navigator.pushNamed(context, HomeScreen.id);
          }
          catch(e){
            print(e);
          }
        },
            child:Text('Verify The Code',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
            ),
        ),

),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(onPressed: (){Navigator.pop(context);}, child:Text('Edit Phone Number',style: TextStyle(fontSize: 15),))
          ],
        )

      ],
        ),
      ),
      ),
    );
  }
}

