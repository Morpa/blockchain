import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/repositories/exchange_repository.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final ExchangeRepository repository = context.read();
    return const Scaffold();
  }
}
