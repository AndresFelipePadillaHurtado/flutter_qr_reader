import 'package:qr_reader/infrastructure/entities/scan.dart';

abstract class ScanRepository {
  Future<List<Scan>> getAll();
  Future<List<Scan>> getByTipo(String tipo);
  Future<Scan> getById(Scan scan);
  Future<int> saveScan(Scan scan);
  Future<void> deleteAllScan();
  Future<void> deleteById(Scan scan);
}
