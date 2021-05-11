import 'package:flutter/material.dart';

class SliverHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      background: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                'https://i.pinimg.com/originals/22/80/da/2280da5f95deae014278b53edceaf638.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
