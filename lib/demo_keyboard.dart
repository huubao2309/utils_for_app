import 'package:cool_ui/cool_ui.dart';
import 'package:flutter/material.dart';

// class NumberKeyboard extends StatelessWidget {
//   static const CKTextInputType inputType =
//       const CKTextInputType(name: 'CKNumberKeyboard'); //定义InputType类型
//   static double getHeight(BuildContext context) {
//     //编写获取高度的方法
//     return 50.0;
//   }

//   final KeyboardController controller; //用于控制键盘输出的Controller
//   const NumberKeyboard({this.controller});

//   static register() {
//     //注册键盘的方法
//     CoolKeyboard.addKeyboard(
//         NumberKeyboard.inputType,
//         KeyboardConfig(
//             builder: (context, controller, params) {
//               // 可通过CKTextInputType传参数到键盘内部
//               return NumberKeyboard(controller: controller);
//             },
//             getHeight: NumberKeyboard.getHeight));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // 例子
//       color: Colors.white,
//       child: GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         child: Center(
//           child: Text('1'),
//         ),
//         onTap: () {
//           controller.addText('1'); // 往输入框光标位置添加一个1
//         },
//       ),
//     );
//   }
// }

class KeyBoardDemo extends StatefulWidget {
  @override
  _KeyBoardDemoState createState() => _KeyBoardDemoState();
}

class _KeyBoardDemoState extends State<KeyBoardDemo> {
  @override
  Widget build(BuildContext context) {
    return KeyboardMediaQuery(
      //用于键盘弹出的时候页面可以滚动到输入框的位置
      child: TextField(
        keyboardType: NumberKeyboard.inputType,
        decoration: InputDecoration(
          hintText: "hintText",
          labelText: "titleText",
          labelStyle: TextStyle(color: Colors.green),
          hintStyle: TextStyle(color: Colors.black),
          icon: Icon(
            Icons.attach_money,
            color: Colors.blue,
          ),
        ),
        onChanged: (string) {
          setState(() {
            // TODO: Bug can't change with dot decimal: 123.45 with Vietnamese
          });
        },
      ),
    );
  }
}
