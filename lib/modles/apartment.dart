class Apartment {
  final String id;
  final String imageAddress;
  final String city;
  final int amount;
  final String address;
  final int beds;
  final int baths;
  final int area;
  final double rating;
  final int ratingCount;
  bool isFavourite;

  Apartment({
    required this.id,
    required this.imageAddress,
    required this.city,
    required this.amount,
    required this.address,
    required this.beds,
    required this.baths,
    required this.area,
    required this.rating,
    required this.ratingCount,
    this.isFavourite = false,
  });
}

class Apartments {
  final List<Apartment> apartments = [
    Apartment(
      id: 'Chiple Dhunga, 14',
      imageAddress: 'assets/images/banglo.jpg',
      city: "Pokhara",
      amount: 4500,
      address: "Chipledunga, 14 postbox opposite",
      beds: 2,
      baths: 1,
      area: 13,
      rating: 4.6,
      ratingCount: 122,
    ),
    Apartment(
      id: '14NewYork',
      imageAddress: 'assets/images/home.jpg',
      city: 'New York',
      amount: 75000000,
      address: '14 Street, Central Church, NewYork',
      beds: 4,
      baths: 4,
      area: 150,
      rating: 4.9,
      ratingCount: 478,
    ),
    Apartment(
      id: '109BuffalloEast',
      imageAddress: 'assets/images/house.jpg',
      city: "Buffallo",
      amount: 10100000,
      address: '109 Street, East Buffallo, New York',
      beds: 2,
      baths: 1,
      area: 80,
      rating: 3.8,
      ratingCount: 42,
    ),
    Apartment(
      id: '118EdmonCentral',
      imageAddress: 'assets/images/modern_house.jpg',
      city: 'Central Edmon',
      amount: 14000000,
      address: '118 Street, West Edmon, Alberta',
      beds: 2,
      baths: 2,
      area: 100,
      rating: 4.2,
      ratingCount: 214,
    ),
  ];
}
