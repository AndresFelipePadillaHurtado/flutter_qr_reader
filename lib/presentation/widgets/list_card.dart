import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/config/helper/url_launcher.dart';
import 'package:qr_reader/domain/models/scan_model.dart';
import 'package:qr_reader/presentation/providers/scan_provider.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.scanList,
    required this.color,
  });

  final List<ScandModel> scanList;
  final ColorScheme color;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: scanList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          onDismissed: (direction) {
            final scan = scanList[index];
            Provider.of<ScanProvider>(context, listen: false)
                .deleteById(scan.id);
          },
          background: Container(
            color: Colors.red,
          ),
          key: UniqueKey(),
          child: ListTile(
            title: Text(scanList[index].valor),
            subtitle: Text('${scanList[index].id}'),
            leading: Icon(
              Icons.home_repair_service,
              color: color.primary,
            ),
            trailing: const Icon(Icons.arrow_right_sharp),
            onTap: () => openLauchURL(context, scanList[index]),
          ),
        );
      },
    );
  }
}
