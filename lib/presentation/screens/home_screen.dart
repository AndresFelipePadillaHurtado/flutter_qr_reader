import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/presentation/providers/custon_navigator_bar_provider.dart';
import 'package:qr_reader/config/bd/sqlite_db.dart';
import 'package:qr_reader/presentation/providers/scan_provider.dart';
import 'package:qr_reader/presentation/widgets/button_scanner.dart';
import 'package:qr_reader/presentation/widgets/custom_navegation_bar.dart';
import 'package:qr_reader/presentation/widgets/direcciones_widget.dart';
import 'package:qr_reader/presentation/widgets/historial_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color.primary,
        title: const Text("Historial"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<ScanProvider>(context, listen: false)
                    .deleteAllScan();
              },
              icon: const Icon(Icons.delete_forever_outlined))
        ],
      ),
      body: const _HomeBody(),
      floatingActionButton: const ButtonScanner(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    final customNavegatorProvider = context.watch<CustomNavedatorBarProvider>();
    final scanProvider = context.read<ScanProvider>();

    DBProvider.db.database;

    switch (customNavegatorProvider.currentIndex) {
      case 0:
        scanProvider.getByTipo("geo");
        return const HistorialWidget();
      case 1:
        scanProvider.getByTipo("http");
        return const DireccionesWidget();
      default:
    }

    return const Placeholder();
  }
}
