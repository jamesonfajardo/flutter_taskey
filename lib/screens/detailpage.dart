import 'package:flutter/material.dart';
import 'package:Taskey/widgets/sliver_header.dart';

class Detailpage extends StatelessWidget {
  final String myTask;
  Detailpage({this.myTask});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              bottom: TabBar(
                tabs: [
                  Tab(
                    text: 'tab 1',
                  ),
                  Tab(
                    text: 'tab 2',
                  ),
                ],
              ),
              expandedHeight: 300,
              flexibleSpace: SliverHeader(),
            ),
            SliverFillRemaining(
              child: TabBarView(children: [
                Center(
                    child: Text('Task Chosen: $myTask' ?? 'Placeholder text')),
                Center(child: Text('Try scrolling the page')),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
