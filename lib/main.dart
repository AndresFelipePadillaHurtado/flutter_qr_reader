import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/config/routes/routes.dart';
import 'package:qr_reader/config/theme/theme.dart';
import 'package:qr_reader/presentation/providers/custon_navigator_bar_provider.dart';
import 'package:qr_reader/presentation/providers/scan_provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => CustomNavedatorBarProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ScanProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      theme: ThemeApp().theme(),
      routes: routes,
    );
  }
}
