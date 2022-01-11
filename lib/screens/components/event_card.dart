import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String image, title, duration;

  const EventCard({
     Key ?key,
    required this.image,
    required this.title,
    required this.duration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.380,
          height: MediaQuery.of(context).size.height * 0.230,
          decoration: BoxDecoration(
            color: Color(0xFF575757),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(this.image,
                    width: 150, height: 100, fit: BoxFit.fitHeight),
              ),
              Text(
                this.title,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  this.duration,
                  style: TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
