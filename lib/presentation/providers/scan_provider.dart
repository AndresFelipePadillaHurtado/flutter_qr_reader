import 'package:flutter/material.dart';
import 'package:qr_reader/infrastructure/datasources/scan_sqflite_datasouce_imp.dart';
import 'package:qr_reader/infrastructure/entities/scan.dart';
import 'package:qr_reader/infrastructure/repositories/scan_respository_imp.dart';

class ScanProvider extends ChangeNotifier {
  List<Scan> scanList = [];
  String tipo = "http";

  ScanRepositoryImp repositorio =
      ScanRepositoryImp(dataSource: ScanSQFLiteDatasourceImp());

  ScanProvider() {
    getByTipo(tipo);
  }

  /*ScanRepositoryImp repositorio =
      ScanRepositoryImp(dataSource: ScanIsarDatasourceImp());*/

  getAll() async {
    scanList = await repositorio.getAll();
    notifyListeners();
  }

  getByTipo(String tipo) async {
    scanList = await repositorio.getByTipo(tipo);
    notifyListeners();
  }

  getById(Scan scan) async {
    await repositorio.getById(scan);
  }

  saveScan(String value) async {
    final scan = Scan(valor: value, tipo: tipo);
    await repositorio.saveScan(scan);
    getByTipo(tipo);
  }

  deleteAllScan() async {
    await repositorio.deleteAllScan();
    scanList = [];
    notifyListeners();
  }

  deleteById(Scan scan) async {
    await repositorio.deleteById(scan);
  }
}
