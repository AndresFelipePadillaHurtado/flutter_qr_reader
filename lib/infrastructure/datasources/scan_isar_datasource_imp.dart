import 'package:isar/isar.dart';
import 'package:qr_reader/config/bd/isar_db.dart';
import 'package:qr_reader/domain/datasource/scan_datasource.dart';
import 'package:qr_reader/infrastructure/entities/scan.dart';

class ScanIsarDatasourceImp implements ScanDataSource {
  IsarDB isarDB = IsarDB();

  @override
  Future<List<Scan>> getAll() async {
    final db = await isarDB.openDB();
    final scans = await db.scans.where().findAll();
    return scans;
  }

  @override
  Future<Scan> getById(Scan scan) async {
    final db = await isarDB.openDB();
    final scanDB = await db.scans.get(scan.idIsar); // get
    return Future.value(scanDB);
  }

  @override
  Future<List<Scan>> getByTipo(String tipo) async {
    final db = await isarDB.openDB();
    final scans = await db.scans.filter().tipoEqualTo(tipo).findAll();
    return scans;
  }

  @override
  Future<int> saveScan(Scan scan) async {
    final db = await isarDB.openDB();
    final scanID = db.writeTxnSync(() => db.scans.putSync(scan));
    return scanID;
  }

  @override
  Future<void> deleteAllScan() async {
    final db = await isarDB.openDB();
    await db.writeTxn(() async {
      await db.scans.clear(); // delete
    });
  }

  @override
  Future<void> deleteById(Scan scan) async {
    final db = await isarDB.openDB();
    await db.writeTxn(() async {
      await db.scans.delete(scan.idIsar); // delete
    });
  }
}
