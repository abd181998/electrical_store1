
import 'package:electrical_store1/widgets/home/proudect_card.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../models/product.dart';
import '../../screens/details_screen.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      bottom: false,
        child: Column(
      children: [
          SizedBox(height:kDefaultPadding /2,),
        Expanded(
            child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              margin: EdgeInsets.only(top: 70),
            ),
           ListView.builder(
             physics:BouncingScrollPhysics(),
               itemBuilder: (context, index)=>ProudectCard(
                 itemIndex: index,
                 product: products[index],
                 press: (){
                   Navigator.push(context, MaterialPageRoute(
                       builder:(context) => DetailsScreen(
                         product:products[index] ,
                       )));
                 },
               ),
             itemCount: products.length,
           ),
          ],
        ))
      ],
    ));
  }
}


