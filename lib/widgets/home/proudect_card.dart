import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../models/product.dart';
import '../details/details_body.dart';

class ProudectCard extends StatelessWidget {
  const ProudectCard({Key? key,  required this.itemIndex, required this.product, required this.press}) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      margin: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding /2,
      ),
      height: 190,
      child: InkWell(
        onTap: (){
          press();
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  boxShadow:const [ BoxShadow(
                      offset: Offset(0,15),
                      blurRadius: 25,
                      color: Colors.black12
                  )
                  ] ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(product.image!,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: SizedBox(
                  height: 136,
                  width: size.width -200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(product.title!,
                          style: Theme.of(context).textTheme.bodyText1,
                          maxLines: 3,
                        ),
                      ),
                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(product.subTitle!,
                          style:Theme.of(context).textTheme.caption ,
                        ),
                      ),
                      const Spacer(),

                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding *1.5,
                              vertical:kDefaultPadding/5 ),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(22),

                          ),
                          child: Text(
                            'السعر: \$${product.price}',
                            style: const TextStyle(
                              color: Colors.white
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ))

          ],
        ),
      ),
    );
  }
}