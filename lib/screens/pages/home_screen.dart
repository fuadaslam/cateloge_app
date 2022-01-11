import 'package:catalogue_app/screens/components/all_products.dart';
import 'package:catalogue_app/screens/components/event_card.dart';
import 'package:catalogue_app/screens/components/imageCard.dart';
import 'package:catalogue_app/screens/pages/upcoming_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../drawer/widget/navigation_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                          image: 'assets/images/ResturantImage.png',
                          title: 'Vegan Resto',
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
                          image: 'assets/images/ResturantImage.png',
                          title: 'Vegan Resto',
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
                          image: 'assets/images/ResturantImage.png',
                          title: 'Vegan Resto',
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
      ),
    );
  }
}
