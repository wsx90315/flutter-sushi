import 'package:firstApp/constants.dart';
import 'package:firstApp/screens/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

/**
 * Widget
 * 在前面的介绍中，我们知道在Flutter中几乎所有的对象都是一个Widget。
 * 与原生开发中“控件”不同的是，Flutter中的Widget的概念更广泛，它不仅可以表示UI元素，
 * 也可以表示一些功能性的组件如：用于手势检测的 GestureDetector widget、用于APP主题数据传递的Theme等等，
 * 而原生开发中的控件通常只是指UI元素。在后面的内容中，我们在描述UI元素时可能会用到“控件”、“组件”这样的概念，
 * 读者心里需要知道他们就是widget，只是在不同场景的不同表述而已。由于Flutter主要就是用于构建用户界面的，
 * 所以，在大多数时候，读者可以认为widget就是一个控件，不必纠结于概念。
 */
class HomeScreen extends StatelessWidget {
  //HomeScreen 繼承一個 StatelessWidget 無狀態的部件
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 定義一個鷹架類似  App layout 的架子
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0, // Z 座標
        // 標題之前的小組件
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {},
        ),
        // 在標題小部件之後連續顯示的小部件
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kTextColor,
            ),
            onPressed: () {},
          ),
          SizedBox(width: kDefaultPaddin / 2)
        ]);
  }
}
