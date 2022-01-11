import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Help"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text(
        "Help"
      ),),
    )
    );
  }
}
