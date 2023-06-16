import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavNewsScreen extends StatefulWidget {
  const FavNewsScreen({Key? key}) : super(key: key);

  @override
  State<FavNewsScreen> createState() => _FavNewsScreenState();
}

class _FavNewsScreenState extends State<FavNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('News'),
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
