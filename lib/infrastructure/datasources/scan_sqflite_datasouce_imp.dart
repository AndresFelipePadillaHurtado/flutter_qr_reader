import 'package:qr_reader/domain/datasource/scan_datasource.dart';
import 'package:qr_reader/config/bd/sqlite_db.dart';
import 'package:qr_reader/infrastructure/entities/scan.dart';

class ScanSQFLiteDatasourceImp implements ScanDataSource {
  @override
  Future<List<Scan>> getAll() async {
    final db = await DBProvider.db.database;
    final res = await db.query('Scans');
    return res.map((s) => Scan.fromJson(s)).toList();
  }

  @override
  Future<Scan> getById(Scan scan) async {
    final db = await DBProvider.db.database;
    final res = await db.query('Scans', where: 'id = ?', whereArgs: [scan.id]);
    return Scan.fromJson(res.first);
  }

  @override
  Future<int> saveScan(Scan scan) async {
    final db = await DBProvider.db.database;
    final res = await db.insert('Scans', scan.toJson());
    return res;
  }

  @override
  Future<List<Scan>> getByTipo(String tipo) async {
    final db = await DBProvider.db.database;
    final res = await db.query('Scans',
        where: 'tipo = ? ', whereArgs: [tipo], orderBy: ' id desc');
    return res.map((s) => Scan.fromJson(s)).toList();
  }

  @override
  Future<int> deleteAllScan() async {
    final db = await DBProvider.db.database;
    return await db.delete('Scans');
  }

  @override
  Future<int> deleteById(Scan scan) async {
    final db = await DBProvider.db.database;
    return await db.delete('Scans', where: 'id = ?', whereArgs: [scan.id]);
  }
}
