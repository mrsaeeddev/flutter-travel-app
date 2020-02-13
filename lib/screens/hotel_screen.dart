import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/activity_model.dart';
import 'package:flutter_travel_ui_starter/models/hotel_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelScreen extends StatefulWidget {
  final Hotel hotel;
  HotelScreen({this.hotel});
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  )
                ]),
            child: Hero(
              tag: widget.hotel.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
                child: Image(
                  image: AssetImage(widget.hotel.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.close),
                      iconSize: 30.0,
                      color: Colors.black26,
                      onPressed: () => Navigator.pop(context)),
                  Row(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.bookmark),
                      iconSize: 30.0,
                      color: Colors.black26,
                      onPressed: () => print('OnPressed'),
                    ),
                  ])
                ]),
          ),
        ],
      ),
    ]));
  }
}
