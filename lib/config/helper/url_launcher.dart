import 'package:flutter/material.dart';
import 'package:qr_reader/infrastructure/entities/scan.dart';
import 'package:url_launcher/url_launcher.dart';

openLauchURL(BuildContext context, Scan scan) async {
  final Uri url = Uri.parse(scan.valor);
  if (scan.tipo == 'http') {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  } else {
    print("Geo");
  }
}
