import 'package:catalogue_app/screens/pages/product_details_screen.dart';
import 'package:flutter/material.dart';

class ImageCardWithInternal extends StatelessWidget {
  final String image, title;

  const ImageCardWithInternal({
    Key ?key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailPage()),
            );
          },
          child: Container(
            margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width * 0.420,
            height: MediaQuery.of(context).size.height * 0.190,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Stack(
              children: [

                Column(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 10),
                      child: Image.asset(this.image,
                          width: 170, height: 120, fit: BoxFit.fill),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        this.title,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Text(
                    //     this.duration,
                    //     style: TextStyle(
                    //         fontSize: 14,
                    //         fontStyle: FontStyle.italic,
                    //         color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: new Icon(Icons.more_vert),
                      tooltip: 'Navigation menu',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
