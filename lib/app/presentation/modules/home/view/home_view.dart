import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../bloc/home_bloc.dart';

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

        return Scaffold(
            body: bloc.state.when(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          failed: () => const Center(
            child: Text('ERROR'),
          ),
          loaded: (cryptos) => ListView.builder(
            itemBuilder: (_, index) {
              final crypto = cryptos[index];

              return ListTile(
                title: Text(crypto.id),
                subtitle: Text(crypto.symbol),
                trailing: Text(crypto.price.toStringAsFixed(2)),
              );
            },
            itemCount: cryptos.length,
          ),
        ));
      },
    );
  }
}
