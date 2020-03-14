import 'package:flutter_travel_ui_starter/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/karachi.jpg',
    city: 'Karachi',
    country: 'Pakistan',
    description: 'The City of Lights. Explore it\'s foodstreets and more.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/pesh.jpg',
    city: 'Peshawar',
    country: 'Pakistan',
    description: 'This city has a rich history of Pashtun Culture.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/quetta.jpg',
    city: 'Quetta',
    country: 'Pakistan',
    description: 'Quetta is well-known for it\'s traditional food.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/lahore.jpg',
    city: 'Lahore',
    country: 'Pakistan',
    description: 'This city is known as Heart of Pakistan.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/isb.jpg',
    city: 'Islamabad',
    country: 'Pakistan',
    description: 'Capital of Pakistan, city with picturesque landscape.',
    activities: activities,
  ),
];
