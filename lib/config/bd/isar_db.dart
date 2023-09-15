import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_reader/infrastructure/entities/scan.dart';

class IsarDB {
  late Future<Isar> db;

  IsarDB() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      return Isar.open([ScanSchema], directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }
}
