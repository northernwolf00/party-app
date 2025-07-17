import 'package:flutter_bloc/flutter_bloc.dart';
import '../repositories/party_repository.dart';
import 'party_event.dart';
import 'party_state.dart';

class PartyBloc extends Bloc<PartyEvent, PartyState> {
  final PartyRepository repository;

  PartyBloc(this.repository) : super(PartyInitial()) {
    on<LoadPartyData>((event, emit) async {
      emit(PartyLoading());
      try {
        final party = await repository.loadPartyData();
        emit(PartyLoaded(party));
      } catch (e) {
        emit(PartyError(e.toString()));
      }
    });
  }
}
