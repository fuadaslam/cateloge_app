import 'package:flutter/material.dart';

class ProductsImgCard extends StatelessWidget {
  final List<Widget> horizontalList;
  final String title;
  final String seealltitle;

  ProductsImgCard({required this.title,required this.seealltitle, required this.horizontalList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SectionTitle((this.title != null ) ? this.title : ''),
                TextButton(child:
                SeeAllText((this.seealltitle != null ) ? this.seealltitle : ''),
                  onPressed: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => AllRestorents()));
                  },
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.23,
            child: Row(
                children: (this.horizontalList != null ) ? this.horizontalList : []
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String _text;

  SectionTitle(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this._text,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.black
          ),
        ),
      ),
    );
  }
}


class SeeAllText extends StatelessWidget {
  final String _text;

  SeeAllText(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          this._text,
          style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
