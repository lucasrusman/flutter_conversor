import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_conversor/providers/moneda.provider.dart';
import 'package:flutter_bloc_conversor/screens/home_screen.dart';
import 'package:flutter_bloc_conversor/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.ligthTheme,
      home: RepositoryProvider(
          create: (context) => MonedaProvider(), child: const HomePage()),
    );
  }
}
