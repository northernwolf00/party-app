import 'package:flutter/material.dart';
import '../models/party_model.dart';

class GuestListWidget extends StatelessWidget {
  final List<Guest> guests;

  const GuestListWidget({super.key, required this.guests});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          guests.map((guest) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(guest.photoUrl),
                  ),
                  title: Text(
                    guest.name,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  trailing: Icon(
                    Icons.celebration,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            );
          }).toList(),
    );
  }
}
