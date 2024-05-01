import 'package:flutter/material.dart';
import 'package:lnm_reselling/Constants.dart';
import 'package:lnm_reselling/models/Item.dart';

import '../DescriptionScreen.dart';

class ProductsScreen extends StatefulWidget {
  static const String id= "Products_screen";
  final String name;
  const ProductsScreen({super.key,required this.name});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<Item> item =kitems;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text(widget.name,style: TextStyle(
    fontSize: 23
  ),),
),
      body:SingleChildScrollView(
        padding:EdgeInsets.fromLTRB(5, 10, 5, 10) ,
      child:
      Column(

        mainAxisAlignment: MainAxisAlignment.center,

        children: item.map((e) =>
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> DescriptionScreen(product_id:e.id),));},
              child: Column(
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)
                    ),

                    child: Row(
                      children:[
                      Image.network(

                        "${e.image}",
                        fit: BoxFit.fitHeight,
                         height: 140,
                        width: 200,
                        //  width: double.infinity,


                      ),
                      SizedBox(width: 10,),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children:[
                       Text(" Price : ${e.price}",
                         style: TextStyle(fontSize: 25,color: Colors.red,fontWeight: FontWeight.bold),
                       ),
                           SizedBox(width:5),
                          // Text("|",style: TextStyle(fontWeight: FontWeight.bold),),
                           SizedBox(height:5),
                           Text('orignal price: 150',
                             style: TextStyle(fontSize: 18),
                           ),
                      ]
                       ),


    ],


                    ),



        ),
                  SizedBox(height: 10,),
                ],

              ),
            ),
        ).toList(),
      )
        ),);




  }
}
