import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../bloc/home_bloc.dart';

const colors = <String, Color>{
  'BTC': Colors.orange,
  'ETH': Colors.deepPurple,
  'USDT': Colors.green,
  'BNB': Colors.yellow,
  'USDC': Colors.blue,
  'DOGE': Colors.deepOrange,
  'LTC': Colors.grey,
  'XMR': Colors.deepOrangeAccent,
};

class HomeLoaded extends StatelessWidget {
  const HomeLoaded({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.watch();
    final state = bloc.state;

    return state.maybeMap(
      loaded: (state) {
        final cryptos = state.cryptos;

        return ListView.builder(
          padding: const EdgeInsets.all(6),
          itemBuilder: (_, index) {
            final crypto = cryptos[index];

            return Padding(
              padding: const EdgeInsets.all(4),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: Colors.white,
                leading: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/${crypto.symbol}.svg',
                      color: colors[crypto.symbol],
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
                title: Text(
                  crypto.name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(crypto.symbol),
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      NumberFormat.currency(name: '€').format(
                        crypto.price,
                      ),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${crypto.changePercent24Hr.toStringAsFixed(2)}%',
                      style: TextStyle(
                        color: crypto.changePercent24Hr.isNegative
                            ? Colors.redAccent
                            : Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: cryptos.length,
        );
      },
      orElse: () => const SizedBox(),
    );
  }
}
