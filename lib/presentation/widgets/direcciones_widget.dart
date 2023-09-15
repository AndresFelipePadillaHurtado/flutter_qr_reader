import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/presentation/providers/scan_provider.dart';
import 'package:qr_reader/presentation/widgets/list_card.dart';

class DireccionesWidget extends StatelessWidget {
  const DireccionesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scanProvider = context.watch<ScanProvider>();
    scanProvider.getByTipo;

    final color = Theme.of(context).colorScheme;

    final scanList = scanProvider.scanList;
    return ListCard(scanList: scanList, color: color);
  }
}
