import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Exclusive Hotels',
              style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5),
            ),
            GestureDetector(
                onTap: () {
                  print('Run');
                },
                child: Text('See All',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    )))
          ],
        ),
      ),
      Container(
          height: 240.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 350.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          height: 100.0,
                          width: 310.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('\$${hotel.price}/night ',
                                      style: TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2)),
                                  Text(
                                    hotel.name,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    hotel.address,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0),
                            ]),
                        child: Stack(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              height: 140.0,
                              width: 320.0,
                              image: AssetImage(hotel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ]),
                      )
                    ],
                  ));
            },
          )),
    ]);
  }
}
