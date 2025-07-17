import 'package:party_app/models/party_model.dart';

abstract class PartyState {}

class PartyInitial extends PartyState {}

class PartyLoading extends PartyState {}

class PartyLoaded extends PartyState {
  final PartyModel party;
  PartyLoaded(this.party);
}

class PartyError extends PartyState {
  final String message;
  PartyError(this.message);
}
