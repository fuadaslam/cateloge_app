import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Contacts"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(child: Text(
          "Contacts"
      ),),
    )
    );
  }
}
