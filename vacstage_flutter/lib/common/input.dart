import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Input extends StatefulWidget {
  Input({@required this.text});

  final text;
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // input 감싸는 box 
      width: 300,
      height: 45,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1, 
          color: Colors.black,
        ),
      ),
      child: Row(
        children: [
          // icon 
          Container(
            child: SvgPicture.asset('assets/images/Id.svg'),
          ),
          // input box 
          Container(
            width: 250,
            padding: EdgeInsets.only(left: 10.0),
            child: TextField(
              style: TextStyle(
              fontSize: 20.0,
            ),
              decoration: InputDecoration(
                hintText: '아이디를 입력하세요.',
                border: InputBorder.none,
              ),
            )
          ),    
        ],
      )
    );
  }
}
