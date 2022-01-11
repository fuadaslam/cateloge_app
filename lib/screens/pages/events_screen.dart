import 'package:catalogue_app/screens/components/imageCard.dart';
import 'package:catalogue_app/screens/drawer/widget/navigation_drawer_widget.dart';
import 'package:catalogue_app/screens/pages/upcoming_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Events"),
        centerTitle: true,
        backgroundColor: Colors.blue,
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
              title: 'Post Events',
              seealltitle: "See All",
              horizontalList: <Widget>[
                Expanded(
                  child:
                  ListView.builder(
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
    )
    );
  }
}
