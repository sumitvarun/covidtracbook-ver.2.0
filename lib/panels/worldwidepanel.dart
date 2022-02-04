import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  const WorldWidePanel({Key? key, required this.worldData}) : super(key: key);
  final Map worldData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(worldData['cases'].toString()),
                margin: const EdgeInsets.all(5.0),
                height: 100.0,
                decoration: const BoxDecoration(color: Colors.red),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(5.0),
                height: 100.0,
                decoration: const BoxDecoration(color: Colors.blue),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 100.0,
                decoration: const BoxDecoration(color: Colors.green),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 100.0,
                decoration: const BoxDecoration(color: Colors.deepOrange),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 100.0,
                decoration: const BoxDecoration(color: Colors.yellow),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 100.0,
                decoration: const BoxDecoration(color: Colors.indigo),
              ),
            ),
          ],
        )
      ],
    );
  }
}
