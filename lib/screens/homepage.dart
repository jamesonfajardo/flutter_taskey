import 'package:flutter/material.dart';
import 'package:Taskey/widgets/homepage_header.dart';
import 'package:Taskey/widgets/homepage_body.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  // SingleTickerProviderStateMixin - this class will act as a ticker for the animation

  AnimationController controller;
  Animation curve; // enables dynamic timing in animations

  @override
  void initState() {
    super.initState();

    // Animation settings
    controller = AnimationController(
      duration: Duration(milliseconds: 1700),
      vsync: this,
    );

    curve = CurvedAnimation(
      parent: controller,
      curve: Curves.bounceOut,
    );

    controller.forward(); // run the animation forwards (0 - 1)

    // Listen to the changes in AnimationController value
    // Blank setState will do a rebuild when the value changes
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomepageHeader(curve: curve),
          HomepageBody(),
        ],
      ),
    );
  }
}
