import 'package:flutter/material.dart';
import 'package:qr_reader/presentation/screens/home_screen.dart';
import 'package:qr_reader/presentation/screens/mapa_screen.dart';

Map<String, WidgetBuilder> routes = {
  'home': (_) => const HomeScreen(),
  'mapa': (_) => const MapaScreen()
};
