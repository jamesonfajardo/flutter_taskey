import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'package:Taskey/model/data.dart';

class HomepageHeader extends StatelessWidget {
  HomepageHeader({this.curve});

  final Animation curve;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
      color: Colors.lightBlueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: curve.value * 100, // animation value
                child: Image.asset(
                  'images/list.png',
                ),
              ),
              SizedBox(width: 10),
              TypewriterAnimatedTextKit(
                speed: Duration(milliseconds: 250),
                totalRepeatCount: 1,
                text: ['Taskey'],
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 20),
            child: Text(
              Provider.of<Data>(context).myTasks[0],
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
