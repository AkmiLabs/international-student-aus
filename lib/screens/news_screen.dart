import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: const Text('News'),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.star,
                color: Colors.yellow,
              )),
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
