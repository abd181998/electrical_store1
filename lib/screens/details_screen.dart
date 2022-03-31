
import 'package:flutter/material.dart';

import '../colors.dart';
import '../models/product.dart';
import '../widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key,required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          padding: const EdgeInsets.only(right: kDefaultPadding),
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
        centerTitle: false,
        title: Text(
          'رجوع',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        )
        ),
      ),
      body: DetailsBody(
        product: product,
      ),


    );

  }
}
