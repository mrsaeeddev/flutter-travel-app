class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  int reviews;
  int rating;
  String website;
  String phone;
  List<String> images;
  List<String> ameneties;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
    this.rating,
    this.reviews,
    this.website,
    this.phone,
    this.images,
    this.ameneties,
  });
}

final List<Hotel> hotels = [
  Hotel(
      imageUrl: 'assets/images/hotel0.jpg',
      name: 'Hotel 0',
      address: '404 Great St',
      price: 175,
      rating: 5,
      website: 'radissonhotels.com',
      phone: '+023000034034',
      reviews: 1234,
      images: [
        'assets/images/hotel.jpeg',
        'assets/images/hotel0.jpg',
        'assets/images/hotel1.jpeg',
        'assets/images/hotel1.jpg',
      ],
      ameneties: [
        'Cycle',
        'Pool',
        'Gym',
        'Sports',
        'Exchange',
        'WiFi',
        'Car',
        'Guide'
      ]),
  Hotel(
      imageUrl: 'assets/images/hotel1.jpg',
      name: 'Hotel 1',
      address: '404 Great St',
      price: 300,
      rating: 4,
      website: 'marriot.com',
      phone: '+023000034034',
      reviews: 134,
      images: [
        'assets/images/hotel2.jpg',
        'assets/images/hotel2.jpeg',
        'assets/images/hotel3.jpeg',
        'assets/images/hotel4.jpeg',
      ],
      ameneties: [
        'Cycle',
        'Pool',
        'Gym',
      ]),
  Hotel(
      imageUrl: 'assets/images/hotel2.jpg',
      name: 'Hotel 2',
      address: '404 Great St',
      price: 240,
      rating: 3,
      website: 'ivoryhotels.com',
      phone: '+023000034034',
      reviews: 1234666,
      images: [
        'assets/images/hotel1.jpg',
        'assets/images/hotel0.jpg',
        'assets/images/hotel3.jpeg',
        'assets/images/hotel4.jpeg',
      ],
      ameneties: [
        'Exchange',
        'Cycle',
        'WiFi',
      ]),
];
