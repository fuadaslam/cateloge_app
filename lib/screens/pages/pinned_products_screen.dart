import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PinnedProductsPage extends StatefulWidget {
  const PinnedProductsPage({Key? key}) : super(key: key);

  @override
  _PinnedProductsPageState createState() => _PinnedProductsPageState();
}

class _PinnedProductsPageState extends State<PinnedProductsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Pinned Products"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Text(
          "Pinned"
      ),),
    )
    );
  }
}
