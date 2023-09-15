import 'package:qr_reader/domain/models/scan_model.dart';

abstract class ScanDataSource {
  Future<List<ScandModel>> getAll();
  Future<List<ScandModel>> getByTipo(String tipo);
  Future<ScandModel> getById(int id);
  Future<int> saveScan(ScandModel scan);
  Future<int> deleteAllScan();
  Future<int> deleteById(int? id);
}
