import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeBloc(
        exchangeRepository: context.read(),
      )..init(),
      builder: (context, _) {
        final HomeBloc bloc = context.watch();

        return Scaffold(body: () {
          final state = bloc.state;

          if (state is HomeStateLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HomeStateLoaded) {
            return ListView.builder(
              itemBuilder: (_, index) {
                final crypto = state.cryptos[index];

                return ListTile(
                  title: Text(crypto.id),
                  subtitle: Text(crypto.symbol),
                  trailing: Text(crypto.price.toStringAsFixed(2)),
                );
              },
              itemCount: state.cryptos.length,
            );
          }

          return const Center(
            child: Text('ERROR'),
          );
        }());
      },
    );
  }
}
