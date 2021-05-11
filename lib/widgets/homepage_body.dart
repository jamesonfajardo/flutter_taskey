import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Taskey/model/data.dart';
import 'package:Taskey/widgets/task_tile.dart';

class HomepageBody extends StatefulWidget {
  @override
  _HomepageBodyState createState() => _HomepageBodyState();
}

class _HomepageBodyState extends State<HomepageBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: ReorderableListView(
          children: List.generate(
            Provider.of<Data>(context).myTasks.length,
            (index) {
              return TaskTile(
                index: index,
                key: UniqueKey(),
              );
            },
          ),
          onReorder: (oldIndex, newIndex) {
            setState(() {
              if (newIndex > oldIndex) {
                // subtract 1 from the new index to prevent array offset
                newIndex -= 1;
              }
              // this algo places the new list item to a new index
              String reorder = Provider.of<Data>(context, listen: false)
                  .myTasks
                  .removeAt(oldIndex);
              Provider.of<Data>(context, listen: false)
                  .myTasks
                  .insert(newIndex, reorder);
              Provider.of<Data>(context, listen: false).updateData();
              // debug
              print(Provider.of<Data>(context, listen: false).myTasks[0]);
            });
          },
        ),
      ),
    );
  }
}
