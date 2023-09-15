import 'package:qr_reader/domain/datasource/scan_datasource.dart';
import 'package:qr_reader/infrastructure/entities/scan.dart';

class ScanRepositoryImp implements ScanDataSource {
  final ScanDataSource dataSource;

  ScanRepositoryImp({required this.dataSource});
  @override
  Future<List<Scan>> getAll() {
    return dataSource.getAll();
  }

  @override
  Future<Scan> getById(Scan scan) {
    return dataSource.getById(scan);
  }

  @override
  Future<int> saveScan(Scan scan) {
    return dataSource.saveScan(scan);
  }

  @override
  Future<List<Scan>> getByTipo(String tipo) {
    return dataSource.getByTipo(tipo);
  }

  @override
  Future<void> deleteAllScan() {
    return dataSource.deleteAllScan();
  }

  @override
  Future<void> deleteById(Scan scan) {
    return dataSource.deleteById(scan);
  }
}
