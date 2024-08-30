import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/interface/about_column.dart';
import 'package:untitled2/interface/big_text.dart';
import 'package:untitled2/interface/star_icon.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFF3CFC6), // Background color for the whole page
        body: Column(

           children: [
             SizedBox(height: 30),
             Align(
               alignment: Alignment.center,
               child:

                 Stack(
                   children: [
                     // Container with white background and rounded corners
                     Container(
                       width: 350,

                       height: 750,
                       decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(20),
                       ),
                     ),
                     // Main content in Column
                     Positioned.fill(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           // Top Stack with image and icons
                           Stack(
                             children: [

                               Align(
                                 alignment: Alignment.center,
                                 child: ClipRRect(
                                   borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                                   child: Image.asset(
                                     'imgs/download.jpeg',
                                     fit: BoxFit.cover,
                                     height: 400,
                                     width: 320, // You can adjust the width to fit your needs
                                   ),
                                 ),
                               ),
                               Row(
                                 children: [
                                   SizedBox(width: 20),
                                   Positioned(
                                     top: 22,
                                     left: 100,
                                     child: Icon(
                                       Icons.arrow_back,
                                       color: Colors.white,
                                     ),
                                   ),
                                   SizedBox(width: 265),
                                   Positioned(
                                     top: 22,
                                     right: 16,
                                     child: Image.asset(
                                       'imgs/heart.png',
                                       height: 20,
                                     ),
                                   )
                     ]),
                             ],
                           ),
                           // Title and Price Row
                           Row(

                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               SizedBox(width: 10,),
                               Text(
                                 'C2 Analog Clock',
                                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                               ),
                               SizedBox(width: 80,),
                               Text(
                                 "\$550",
                                 style: TextStyle(
                                   color: Colors.red,
                                   fontSize: 20,
                                 ),
                               ),
                             ],
                           ),
                           // Rating Row
                           Row(
                             children: [
                               SizedBox(width: 18,),
                               StarIcon(),
                               StarIcon(),
                               StarIcon(),
                               StarIcon(),
                               Icon(
                                 Icons.star,
                                 color: Colors.grey,
                               ),
                               Text(
                                 '4/5 (12)',
                                 style: TextStyle(
                                   color: Colors.grey,
                                 ),
                               ),
                             ],
                           ),
                           // Description Column
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               SizedBox(width: 20,),
                               BigText('A classically designed analog clock that would add to'),

                               SizedBox(height: 5,),
                               BigText('the decor of your house. Analog clock has hour'),
                               SizedBox(height: 5,),
                               BigText('minutes, and seconds hands.'),
                             ],
                           ),
                           // AboutColumn Row
                           Row(
                             children: [
                               SizedBox(width: 10,),
                               AboutColumn("Type", "Analog"),
                               SizedBox(width: 20),
                               AboutColumn("Material", "Plastic"),
                             ],
                           ),
                           // Add to Cart Button
                           Stack(
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   color: Colors.black,
                                   borderRadius: BorderRadius.circular(15),
                                 ),
                                 height: 65,
                                 width: 300,
                               ),
                               Positioned.fill(
                                 child: Center(
                                   child: Text(
                                     "Add to cart",
                                     style: TextStyle(color: Colors.white),
                                   ),
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                   ],
                 ),

             ),
           ],
        ),
      ),
    );
  }
}
