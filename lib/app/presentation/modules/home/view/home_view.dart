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
        wsRepository: context.read(),
      )..init(),
      builder: (context, _) {
        final HomeBloc bloc = context.watch();

        return Scaffold(
            appBar: AppBar(
              title: bloc.state.mapOrNull(
                loaded: (state) => Text(
                  state.wsStatus.when(
                    connecting: () => 'Connecting',
                    connected: () => 'Connected',
                    failed: () => 'Failed',
                  ),
                ),
              ),
            ),
            body: bloc.state.map(
              loading: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
              failed: (state) {
                final message = state.failure.whenOrNull(
                  network: () => 'Check your internet connection',
                  server: () => 'Server error',
                );

                Center(
                  child: Text(message ?? 'Internal error'),
                );
                return null;
              },
              loaded: (state) => ListView.builder(
                itemBuilder: (_, index) {
                  final crypto = state.cryptos[index];

                  return ListTile(
                    title: Text(crypto.id),
                    subtitle: Text(crypto.symbol),
                    trailing: Text(crypto.price.toStringAsFixed(2)),
                  );
                },
                itemCount: state.cryptos.length,
              ),
            ));
      },
    );
  }
}
