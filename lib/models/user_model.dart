class UserModel {
  UserModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  factory UserModel.fromJson(Map<String, dynamic> map) => UserModel(
        id: map["id"],
        name: map["name"],
        username: map["username"],
        email: map["email"],
        address: Address.fromJson(map["address"]),
        phone: map["phone"],
        website: map["website"],
        company: Company.fromJson(map["company"]),
      );
}

class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  factory Address.fromJson(Map<String, dynamic> map) => Address(
        street: map["street"],
        suite: map["suite"],
        city: map["city"],
        zipcode: map["zipcode"],
        geo: Geo.fromJson(map["geo"]),
      );
}

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  String? lat;
  String? lng;

  factory Geo.fromJson(Map<String, dynamic> map) => Geo(
        lat: map["lat"],
        lng: map["lng"],
      );
}

class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  String? name;
  String? catchPhrase;
  String? bs;

  factory Company.fromJson(Map<String, dynamic> map) => Company(
        name: map["name"],
        catchPhrase: map["catchPhrase"],
        bs: map["bs"],
      );
}
