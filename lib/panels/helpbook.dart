import 'package:covidtracbook/panels/datasource.dart';
import 'package:flutter/material.dart';

void main() => runApp(questionAnswer());

// ignore: camel_case_types
class questionAnswer extends StatelessWidget {
  const questionAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covidtracbook',
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            title: const Text('Covidtracbook'),
          ),
          body: Container(
            color: Colors.white,
            child: ListView.builder(
                itemCount: List.filled(21, null, growable: false).length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    title: Text(
                      DataSource.questionAnswer[index]["question"],
                      style: TextStyle(
                          color: Colors.grey[900],
                          fontFamily: 'Circular',
                          fontWeight: FontWeight.bold),
                    ),
                    children: [
                      Text(
                        DataSource.questionAnswer[index]['answer'],
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontFamily: 'Circular',
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  );
                }),
          )),
    );
  }
}
