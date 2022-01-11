import 'package:catalogue_app/screens/components/imageCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        titleSpacing: 20,
        iconTheme: IconThemeData(color: Colors.white, size: 36),
        actionsIconTheme: IconThemeData(color: Colors.white),
        // title: Container(
        //   child: Row(
        //     children: <Widget>[
        //      Text("Palm Fiber")
        //     ],
        //   ),
        // ),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Center(child: Text("Palm Fiber")),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      offset: const Offset(1.1, 1.1),
                      blurRadius: 5.0),
                ],
              ),
              child: CupertinoTextField(
                keyboardType: TextInputType.text,
                placeholder: 'Search',
                placeholderStyle: TextStyle(
                  color: Color(0xffC4C6CC),
                  fontSize: 14.0,
                  fontFamily: 'Brutal',
                ),
                prefix: Padding(
                  padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0.0, 5.0),
                  child: Icon(
                    Icons.search,
                    size: 18,
                    color: Colors.black,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.folder),
            constraints: BoxConstraints(maxHeight: 38, maxWidth: 38),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Material",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: checkBoxListTileModel.length,
                    itemBuilder: (BuildContext context, int index) {
                      return new Container(
                        padding: new EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            new CheckboxListTile(
                              activeColor: Colors.pink[300],
                              dense: true,
                              //font change
                              title: new Text(
                                checkBoxListTileModel[index].title,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.5),
                              ),
                              value: checkBoxListTileModel[index].isCheck,
                              // secondary: Container(
                              //   height: 50,
                              //   width: 50,
                              //   child: Image.asset(
                              //     checkBoxListTileModel[index].img,
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
                              onChanged: (bool? value) {
                                itemChange(value!, index);
                              },
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Divider(color: Colors.black),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Wave",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: checkBoxListTileModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                new CheckboxListTile(
                                  activeColor: Colors.pink[300],
                                  dense: true,
                                  //font change
                                  title: new Text(
                                    checkBoxListTileModel[index].title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5),
                                  ),
                                  value: checkBoxListTileModel[index].isCheck,
                                  // secondary: Container(
                                  //   height: 50,
                                  //   width: 50,
                                  //   child: Image.asset(
                                  //     checkBoxListTileModel[index].img,
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  onChanged: (bool? value) {
                                    itemChange(value!, index);
                                  },
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Color",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: checkBoxListTileModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                new CheckboxListTile(
                                  activeColor: Colors.pink[300],
                                  dense: true,
                                  //font change
                                  title: new Text(
                                    checkBoxListTileModel[index].title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5),
                                  ),
                                  value: checkBoxListTileModel[index].isCheck,
                                  // secondary: Container(
                                  //   height: 50,
                                  //   width: 50,
                                  //   child: Image.asset(
                                  //     checkBoxListTileModel[index].img,
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  onChanged: (bool? value) {
                                    itemChange(value!, index);
                                  },
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Year",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: checkBoxListTileModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                new CheckboxListTile(
                                  activeColor: Colors.pink[300],
                                  dense: true,
                                  //font change
                                  title: new Text(
                                    checkBoxListTileModel[index].title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5),
                                  ),
                                  value: checkBoxListTileModel[index].isCheck,
                                  // secondary: Container(
                                  //   height: 50,
                                  //   width: 50,
                                  //   child: Image.asset(
                                  //     checkBoxListTileModel[index].img,
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  onChanged: (bool? value) {
                                    itemChange(value!, index);
                                  },
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Collection",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.30,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: checkBoxListTileModel.length,
                        itemBuilder: (BuildContext context, int index) {
                          return new Container(
                            padding: new EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                new CheckboxListTile(
                                  activeColor: Colors.pink[300],
                                  dense: true,
                                  //font change
                                  title: new Text(
                                    checkBoxListTileModel[index].title,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.5),
                                  ),
                                  value: checkBoxListTileModel[index].isCheck,
                                  // secondary: Container(
                                  //   height: 50,
                                  //   width: 50,
                                  //   child: Image.asset(
                                  //     checkBoxListTileModel[index].img,
                                  //     fit: BoxFit.cover,
                                  //   ),
                                  // ),
                                  onChanged: (bool? value) {
                                    itemChange(value!, index);
                                  },
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: new Icon(Icons.filter_list_alt),
                  tooltip: 'Navigation menu',
                  onPressed: () {},
                ),
                IconButton(
                  icon: new Icon(Icons.more_vert),
                  tooltip: 'Navigation menu',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.84,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 3.8 / 5.0,
                  children: new List<Widget>.generate(
                      checkBoxListTileModel.length, (index) {
                    return new GridTile(
                      child: ImageCardWithInternal(
                        image: 'assets/images/mateimg1.jpeg',
                        title: 'PLM#546731',
                        // duration: '12 mins',
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}

class CheckBoxListTileModel {
  int userId;

  // String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel(
      {required this.userId,
      // required this.img,
      required this.title,
      required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          // img: 'assets/images/android_img.png',
          title: "june",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          // img: 'assets/images/flutter.jpeg',
          title: "july",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          // img: 'assets/images/ios_img.webp',
          title: "fiber",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          // img: 'assets/images/php_img.png',
          title: "2012",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          // img: 'assets/images/node_img.png',
          title: "India",
          isCheck: false),
    ];
  }
}
