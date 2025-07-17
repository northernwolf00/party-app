import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/party_model.dart';

class PartyRepository {
  Future<PartyModel> loadPartyData() async {
    try {
      final String response = await rootBundle.loadString('assets/party_data.json');
      final data = json.decode(response);
      return PartyModel.fromJson(data);
    } catch (e) {
      throw Exception('Failed to load party data');
    }
  }
}
