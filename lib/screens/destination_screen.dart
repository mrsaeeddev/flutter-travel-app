import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/activity_model.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;
  DestinationScreen({this.destination});
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(
      stars,
      style: TextStyle(fontSize: 10.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width,
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
              tag: widget.destination.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0)),
                child: Image(
                  image: AssetImage(widget.destination.imageUrl),
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
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black26,
                      onPressed: () => Navigator.pop(context)),
                  Row(children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 30.0,
                      color: Colors.black26,
                      onPressed: () => print('OnPressed'),
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.sortAmountDown),
                      iconSize: 25.0,
                      color: Colors.black26,
                      onPressed: () => print('OnPressed'),
                    ),
                  ])
                ]),
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(widget.destination.city,
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.0,
                      )),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 15.0,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(widget.destination.country,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ))
                    ],
                  )
                ]),
          ),
          Positioned(
              right: 20,
              bottom: 20,
              child: Icon(
                Icons.location_on,
                color: Colors.white70,
              ))
        ],
      ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
          itemCount: widget.destination.activities.length,
          itemBuilder: (BuildContext context, int index) {
            Activity activity = widget.destination.activities[index];
            return Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                height: 170.0,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100.0, 0, 20.0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 120.0,
                              child: Text(
                                activity.name,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  '\$${activity.price}',
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey),
                                ),
                                Text(
                                  'per pax',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                              ],
                            )
                          ]),
                      Text(
                        activity.type,
                        style: TextStyle(
                            color: Colors.black87, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      _buildRatingStars(activity.rating),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: Text(activity.startTimes[0].toString()),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          padding: EdgeInsets.all(5.0),
                          width: 70.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          alignment: Alignment.center,
                          child: Text(activity.startTimes[1].toString()),
                        )
                      ])
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 20.0,
                bottom: 20.0,
                left: 20.0,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(activity.imageUrl),
                      width: 110.0,
                      fit: BoxFit.cover,
                    )),
              )
            ]);
          },
        ),
      )
    ]));
  }
}
