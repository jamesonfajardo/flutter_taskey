import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'package:provider/provider.dart';
import 'package:Taskey/model/data.dart';

void main() => runApp(Taskey());

class Taskey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: Homepage(),
      ),
    );
  }
}
