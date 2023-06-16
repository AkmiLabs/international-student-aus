import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DealsScreen extends StatefulWidget {
  const DealsScreen({Key? key}) : super(key: key);

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text('Home'),
          leading: IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_rounded)),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_rounded))
            ],
          ),
          brightness: Brightness.light,
          automaticallyImplyLeading: false,
        ),
        SliverSafeArea(
          minimum: const EdgeInsets.only(top: 4),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [],
            ),
          ),
        )
      ],
    ));
  }
}
