import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/presentation/providers/scan_provider.dart';

class ButtonScanner extends StatelessWidget {
  const ButtonScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        elevation: 0,
        //backgroundColor: color.primary,
        child: const Icon(
          Icons.screen_search_desktop_sharp,
        ),
        onPressed: () async {
          final scanProvider = context.read<ScanProvider>();
          String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
              "#ff6666", "Cancel", false, ScanMode.DEFAULT);
          if (barcodeScanRes == "-1") {
            return;
          }
          scanProvider.saveScan(barcodeScanRes);
        });
  }
}
