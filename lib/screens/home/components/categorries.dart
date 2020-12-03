import 'package:flutter/material.dart';
import '../../../constants.dart';

class Categories extends StatefulWidget {
  @override
  //  Categories类管理自己的状态, 创建_CategoriesState的实例
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  // 選中的陣列第幾位狀態
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    // SizedBox 主要应用在对子控件的大小的一些约束
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
          height: 25,
          // ListView 列表元件
          child: ListView.builder(
              //  scrollDirection 屬性來改變垂直或水平滾動顯示列表資料
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildCategory(index))),
    );
  }

  Widget buildCategory(int index) {
    // 偵測觸控手勢
    return GestureDetector(
      onTap: () {
        // 觸發 Tap 事件後, 修改 selectIndex = index;
        setState(() {
          selectIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          // 副軸方向的對齊方式 crossAxisAlignment,
          // CrossAxisAlignment.start: 縱向起點
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), // top padding 5
              height: 2,
              width: 30,
              color: selectIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
