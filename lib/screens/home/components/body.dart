import 'package:firstApp/constants.dart';
import 'package:flutter/material.dart';
import 'package:firstApp/models/Produce.dart';
import 'ItemCard.dart';
import 'categorries.dart';
import '../../details/detailsScreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 垂直布局
    return Column(
      // 副軸方向的對齊方式 crossAxisAlignment,
      // CrossAxisAlignment.start: 縱向起點
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          // EdgeInsets 设置填充的便捷方法,
          // symmetric 用于设置对称方向的填,
          // vertical: 垂直間距
          // horizontal 水平間距
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5 // h5 的意思
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          // 彈性布局, 擴展其子物件以填滿可用空間
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            // GridView 构建一个二维网格列表
            child: GridView.builder(
              itemCount: products.length,
              // 控制 GridView 子组件如何排列
              // SliverGridDelegateWithFixedCrossAxisCount 该子类实现了一个横轴为固定数量子元素的layout算法
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 横轴子元素的数量
                mainAxisSpacing: kDefaultPaddin, // 主轴方向的间距
                crossAxisSpacing: kDefaultPaddin, // 横轴方向子元素的间距
                childAspectRatio: 0.75, // 子元素在横轴长度和主轴长度的比例
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
