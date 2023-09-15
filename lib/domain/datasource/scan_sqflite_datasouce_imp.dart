import 'package:qr_reader/domain/models/scan_model.dart';
import 'package:qr_reader/infrastructure/datasources/scan_datasource.dart';
import 'package:qr_reader/config/bd/sqlite_db.dart';

class ScanSQFLiteDatasourceImp implements ScanDataSource {
  @override
  Future<List<ScandModel>> getAll() async {
    final db = await DBProvider.db.database;
    final res = await db.query('Scans');
    return res.map((s) => ScandModel.fromJson(s)).toList();
  }

  @override
  Future<ScandModel> getById(int id) async {
    final db = await DBProvider.db.database;
    final res = await db.query('Scans', where: 'id = ?', whereArgs: [id]);
    return ScandModel.fromJson(res.first);
  }

  @override
  Future<int> saveScan(ScandModel scan) async {
    final db = await DBProvider.db.database;
    final res = await db.insert('Scans', scan.toJson());
    return res;
  }

  @override
  Future<List<ScandModel>> getByTipo(String tipo) async {
    final db = await DBProvider.db.database;
    final res = await db.query('Scans',
        where: 'tipo = ? ', whereArgs: [tipo], orderBy: ' id desc');
    return res.map((s) => ScandModel.fromJson(s)).toList();
  }

  @override
  Future<int> deleteAllScan() async {
    final db = await DBProvider.db.database;
    return await db.delete('Scans');
  }

  @override
  Future<int> deleteById(int? id) async {
    final db = await DBProvider.db.database;
    return await db.delete('Scans', where: 'id = ?', whereArgs: [id]);
  }
}
