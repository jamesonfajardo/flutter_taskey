import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Taskey/model/data.dart';
import 'package:Taskey/screens/detailpage.dart';

class TaskTile extends StatelessWidget {
  final int index;
  final key;
  const TaskTile({this.index, this.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlueAccent[100]),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      key: key,
      margin: EdgeInsets.all(10),
      child: ListTile(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Detailpage(
              myTask: Provider.of<Data>(context).myTasks[index],
            ),
          ),
        ),
        title: Text(Provider.of<Data>(context).myTasks[index]),
      ),
    );
  }
}
