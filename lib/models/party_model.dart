class PartyModel {
  final String partyName;
  final String inviterName;
  final String inviterPhoto;
  final String partyImage;
  final List<Guest> guests;

  PartyModel({
    required this.partyName,
    required this.inviterName,
    required this.inviterPhoto,
    required this.partyImage,
    required this.guests,
  });

  factory PartyModel.fromJson(Map<String, dynamic> json) {
    return PartyModel(
      partyName: json['partyName'],
      inviterName: json['inviterName'],
      inviterPhoto: json['inviterPhoto'],
      partyImage: json['partyImage'],
      guests: (json['guests'] as List)
          .map((guestJson) => Guest.fromJson(guestJson))
          .toList(),
    );
  }
}

class Guest {
  final String name;
  final String photoUrl;

  Guest({required this.name, required this.photoUrl});

  factory Guest.fromJson(Map<String, dynamic> json) {
    return Guest(
      name: json['name'],
      photoUrl: json['photoUrl'],
    );
  }
}
