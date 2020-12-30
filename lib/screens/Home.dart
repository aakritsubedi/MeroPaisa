import 'package:MeroPaisa/widgets/AppBar.dart';
import 'package:MeroPaisa/widgets/Card/BankAccount.dart';
import 'package:MeroPaisa/widgets/Welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(16.0),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          MyAppbar(),
          SizedBox(height: 20.0),
          Welcome(),
          Divider(height: 1.0),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Bank Summary',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0)),
              GestureDetector(
                onTap: () {
                  print('Add Banking');
                },
                  child: Text('Add',
                      style: TextStyle(
                          fontWeight: FontWeight.w300, fontSize: 12.0))),
            ],
          ),
          BankAccount()
        ],
      ),
    ));
  }
}
