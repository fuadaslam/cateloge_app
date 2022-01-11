import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Settings"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text(
          "Settings"
      ),),
    )
    );
  }
}
