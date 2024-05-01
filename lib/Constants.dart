import 'package:flutter/material.dart';
import 'package:lnm_reselling/models/SellerDetails.dart';

import 'models/Item.dart';
List<String> ksearchTerms=[
  'Lan',
  'Bucket',
  'Mug',
  'Heater',
  'Induction'
  'Lamp'
  'Badminton Racket'
];
List<Map<String,dynamic>> kgridMap=[
  {
  "title":"Lan",
"images":"https://m.media-amazon.com/images/I/41ztMbXNBxL._AC_UF1000,1000_QL80_.jpg"},
  {
    "title":"Bucket",
    "images":"https://m.media-amazon.com/images/I/61n9LFeri2L._AC_UF1000,1000_QL80_.jpg"
  },
  {
    "title":"Mug",
    "images":"https://img.fruugo.com/product/4/18/490299184_max.jpg"},
  {
    "title":"Heater",
    "images":"https://img.fruugo.com/product/4/18/490299184_max.jpg"},
  {
    "title":"Induction",
    "images":"https://cdn.thewirecutter.com/wp-content/media/2022/03/portable-induction-cooktop-2048px-4631-3x2-1.jpg?auto=webp&quality=75&crop=3:2&width=1024"},
  {
    "title":"Lamp",
    "images":"https://cdn.britannica.com/88/212888-050-6795342C/study-lamp-electrical-cord.jpg"},
  {
    "title":"Badminton Racket",
    "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZZLAPR4o5P-wYqfQy5KMgmKKsSAeqZ8cCig&usqp=CAU"},

];
List<SellerDetails> kSellerDetails=[
  SellerDetails(name: "Madhav", hostel: "BH2", phonenum: 617878278, emailid: "emailid@gmail.com"),
  SellerDetails(name: "Adarsh", hostel: "BH2", phonenum: 617878782, emailid: "emailid3@gmail.com"),
  SellerDetails(name: "Lakhan", hostel: "BH2", phonenum: 617878728, emailid: "emailid1@gmail.com"),


];
 List<Item> kitems = [
   Item(id: "1", description: "This is a bucket", price: 100, condition: Condition.BEST, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZZLAPR4o5P-wYqfQy5KMgmKKsSAeqZ8cCig&usqp=CAU",sellerdetail: kSellerDetails[0]),
   Item(id: "2", description: "This is a bucket", price: 100, condition: Condition.BEST, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZZLAPR4o5P-wYqfQy5KMgmKKsSAeqZ8cCig&usqp=CAU",sellerdetail: kSellerDetails[0]),
   Item(id: "3", description: "This is a bucket", price: 100, condition: Condition.BEST, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZZLAPR4o5P-wYqfQy5KMgmKKsSAeqZ8cCig&usqp=CAU",sellerdetail: kSellerDetails[0]),
   Item(id: "4", description: "This is a bucket", price: 100, condition: Condition.BEST, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZZLAPR4o5P-wYqfQy5KMgmKKsSAeqZ8cCig&usqp=CAU",sellerdetail: kSellerDetails[0]),
   Item(id: "5", description: "This is a bucket", price: 100, condition: Condition.BEST, image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZZLAPR4o5P-wYqfQy5KMgmKKsSAeqZ8cCig&usqp=CAU",sellerdetail: kSellerDetails[0]),

 ];

