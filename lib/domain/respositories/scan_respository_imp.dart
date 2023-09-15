import 'package:qr_reader/domain/models/scan_model.dart';
import 'package:qr_reader/infrastructure/datasources/scan_datasource.dart';

class ScanRepositoryImp implements ScanDataSource {
  final ScanDataSource dataSource;

  ScanRepositoryImp({required this.dataSource});
  @override
  Future<List<ScandModel>> getAll() {
    return dataSource.getAll();
  }

  @override
  Future<ScandModel> getById(int id) {
    return dataSource.getById(id);
  }

  @override
  Future<int> saveScan(ScandModel scan) {
    return dataSource.saveScan(scan);
  }

  @override
  Future<List<ScandModel>> getByTipo(String tipo) {
    return dataSource.getByTipo(tipo);
  }

  @override
  Future<int> deleteAllScan() {
    return dataSource.deleteAllScan();
  }

  @override
  Future<int> deleteById(int? id) {
    return dataSource.deleteById(id);
  }
}
