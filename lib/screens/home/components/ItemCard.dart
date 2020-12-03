import 'package:firstApp/models/Produce.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // 副軸方向的對齊方式 crossAxisAlignment,
      // CrossAxisAlignment.start: 縱向起點
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          // Container  容器佈局
          child: Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            // decoration 实现边框、圆角、阴影、形状、渐变、背景图像
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16), // 圆角度
            ),
            child: Image.asset(product.image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            product.title,
            style: TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
