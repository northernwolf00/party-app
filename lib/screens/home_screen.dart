import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/party_bloc.dart';
import '../blocs/party_event.dart';
import '../blocs/party_state.dart';
import '../widgets/guest_list_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PartyBloc(context.read())..add(LoadPartyData()),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('🎉 Вечеринка', style: TextStyle(fontWeight: FontWeight.bold)),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: BlocBuilder<PartyBloc, PartyState>(
          builder: (context, state) {
            if (state is PartyLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is PartyLoaded) {
              final party = state.party;
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          party.partyImage,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 200,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        party.partyName,
                        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 12),
                      Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(party.inviterPhoto),
                          ),
                          title: Text(
                            'Пригласил: ${party.inviterName}',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Гости',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      GuestListWidget(guests: party.guests),
                    ],
                  ),
                ),
              );
            } else if (state is PartyError) {
              return Center(child: Text('Ошибка: ${state.message}'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}

