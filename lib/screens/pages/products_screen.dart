import 'package:catalogue_app/screens/components/imageCard.dart';
import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:catalogue_app/screens/pages/product_details_screen.dart';
import 'package:catalogue_app/screens/pages/upcoming_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar:  AppBar(
        titleSpacing: 20,
        iconTheme: IconThemeData(color: Colors.white, size: 36),
        actionsIconTheme:
        IconThemeData(color: Colors.white),
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
              width: MediaQuery.of(context).size.width*0.4,
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
        onPressed: (){
        },
      ),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 8.0),
              child: Row(
                children: [
                  Text("Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),)
                ],
              ),
            ),
            ProductsImgCard(
              title: 'Upcoming Events',
              seealltitle: "See All",
              horizontalList: <Widget>[
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ImageCardWithInternal(
                        image: 'assets/images/mateimg1.jpeg',
                        title: 'Coir Doormats',
                        // duration: '12 mins',
                      );
                    },
                  ),
                )
              ],
            ),
            ProductsImgCard(
              title: 'Buyer Meetings',
              seealltitle: "See All",
              horizontalList: <Widget>[
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ImageCardWithInternal(
                        image: 'assets/images/mateimg2.jpeg',
                        title: 'India',
                        // duration: '12 mins',
                      );
                    },
                  ),
                )
              ],
            ),
            ProductsImgCard(
              title: 'Pinned Products',
              seealltitle: "See All",
              horizontalList: <Widget>[
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ImageCardWithInternal(
                        image: 'assets/images/mateimg1.jpeg',
                        title: 'Value for money',
                        // duration: '12 mins',
                      );
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    )
    );
  }
}
