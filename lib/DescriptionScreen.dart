import 'package:flutter/material.dart';
import 'package:lnm_reselling/Constants.dart';
import 'package:lnm_reselling/models/Item.dart';


class DescriptionScreen extends StatefulWidget {
  static const String id= "Descreption_Screen.id";
  final String product_id;
  const DescriptionScreen({super.key,required this.product_id});


  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  List<Item> items =kitems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
          children: items.map((e) =>Column(
            children: [
            //  if(e.id== widget.product_id){}
          Image.network(

          "${e.image}",
            fit: BoxFit.fitWidth,
            height: 140,
            width:double.infinity,
            alignment: Alignment.center,
          ),
              SizedBox(height: 20),

              Row(
                children: [
                  Text("Description: "),
                  SizedBox(width: 4,),
                  Text("${e.description}")
                ],
              ),
              SizedBox(height:10),

              Row(
                children: [
                 // Text('Condition :'),
                 // SizedBox(width:4),
                 // if(e.condition== "GOOD"){
                  Text("${e.condition}",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),

                ],
              ),
              SizedBox(height:10),
              Row(
                children: [
                  Text("Price: "),
                  SizedBox(width: 4,),
                  Text("${e.price}")
                ],
              ),
              SizedBox(height:10),
              // Row(
              //   children: [
              //     Text("Seller: "),
              //     SizedBox(width: 4,),
              //     Text("${e.sellerdetail}")
              //   ],
             // ),


              RaisedButton(onPressed: (){},

                color: Colors.red[600],
                hoverColor: Color(0xFF5D0503FF),
                hoverElevation: 10,
                child: Text(" BUY ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20),),
              )





            ],




          )).toList(),
    ),
        ),
      ),
    );
  }
}
