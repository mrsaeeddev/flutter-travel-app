class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;
  int reviews;
  int rating;
  String website;
  String phone;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
    this.rating,
    this.reviews,
    this.website,
    this.phone,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel0.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
    rating: 5,
    website: 'https://www.radissonhotels.com/',
    phone: '+023000034034340',
    reviews: 1234,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
    rating: 4,
    website: 'https://www.marriot.com/',
    phone: '+023000034034340',
    reviews: 134,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
    rating: 3,
    website: 'https://ivoryhotels.com',
    phone: '+023000034034340',
    reviews: 1234666,
  ),
];
