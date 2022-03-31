
import 'package:electrical_store1/models/product.dart';
import 'package:electrical_store1/widgets/details/proudect_image.dart';
import 'package:flutter/material.dart';

import '../../colors.dart';
import 'color_dot.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key,required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding *1.5),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
               bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ProudectImage(
                    size: size,
                    image: product.image!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ColorDot(
                        fillColor:kTextLightColor ,
                        isSelected: false,
                      ),
                      ColorDot(
                        fillColor:Colors.blue ,
                        isSelected: true,
                      ),
                      ColorDot(
                        fillColor:Colors.red ,
                        isSelected: false,
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(product.title!,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Text('السعر: \$${product.price}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,

                ),
                ),
                const SizedBox(height: 20,)

              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding /2),
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding *1.5,
            vertical: kDefaultPadding /2
            ),
            child:  Text(product.description!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19
            ),
            ),
          )
        ],
      ),
    );
  }
}




