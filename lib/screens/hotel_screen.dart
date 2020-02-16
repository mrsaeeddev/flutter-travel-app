import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/hotel_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HotelScreen extends StatefulWidget {
  final Hotel hotel;
  HotelScreen({this.hotel});
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐';
    }
    return Text(
      stars,
      style: TextStyle(fontSize: 10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
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
        SizedBox(
          height: 10,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.location_city), onPressed: null),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              widget.hotel.name,
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(widget.hotel.address)
                          ]),
                    ],
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.star), onPressed: null),
                      _buildRatingStars(widget.hotel.rating),
                    ],
                  )),
            ],
          ),
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.web), onPressed: null),
                    Text(widget.hotel.website)
                  ],
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.phone_android), onPressed: null),
                    Text(widget.hotel.phone),
                  ],
                )),
          ],
        )),
        Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                itemCount: widget.hotel.images.length,
                itemBuilder: (BuildContext context, int index) {
                  String images = widget.hotel.images[index];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15.0, 5.0, 10.0, 0.0),
                        height: 80.0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image(
                              image: AssetImage(images),
                              width: 100.0,
                              fit: BoxFit.cover,
                            )),
                      )
                    ],
                  );
                })),
        Container(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                itemCount: widget.hotel.ameneties.length,
                itemBuilder: (BuildContext context, int index) {
                  String ameneties = widget.hotel.ameneties[index];
                  return Container(
                    margin: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    height: 80.0,
                    child: IconButton(
                        icon: ameneties == 'Cycle'
                            ? Icon(FontAwesomeIcons.bicycle)
                            : ameneties == 'Gym'
                                ? Icon(FontAwesomeIcons.weight)
                                : ameneties == 'Sports'
                                    ? Icon(FontAwesomeIcons.footballBall)
                                    : ameneties == 'Exchange'
                                        ? Icon(FontAwesomeIcons.moneyBill)
                                        : ameneties == 'WiFi'
                                            ? Icon(FontAwesomeIcons.wifi)
                                            : ameneties == 'Car'
                                                ? Icon(FontAwesomeIcons.car)
                                                : ameneties == 'Pool'
                                                    ? Icon(FontAwesomeIcons
                                                        .swimmingPool)
                                                    : Icon(FontAwesomeIcons
                                                        .placeOfWorship),
                        onPressed: null),
                  );
                })),
        SizedBox(
          height: 10.0,
        ),
        RaisedButton(
            onPressed: null,
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            child: Container(
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.all(10.0),
              child: const Text('Book Now',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  )),
            ))
      ],
    ));
  }
}
