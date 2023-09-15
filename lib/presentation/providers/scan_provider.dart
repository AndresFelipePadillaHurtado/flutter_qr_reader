import 'package:flutter/material.dart';
import 'package:qr_reader/domain/datasource/scan_sqflite_datasouce_imp.dart';
import 'package:qr_reader/domain/models/scan_model.dart';
import 'package:qr_reader/domain/respositories/scan_respository_imp.dart';

class ScanProvider extends ChangeNotifier {
  List<ScandModel> scanList = [];
  String tipo = "http";

  ScanRepositoryImp repositorio =
      ScanRepositoryImp(dataSource: ScanSQFLiteDatasourceImp());

  getAll() async {
    scanList = await repositorio.getAll();
    notifyListeners();
  }

  getByTipo(String tipo) async {
    scanList = await repositorio.getByTipo(tipo);
    notifyListeners();
  }

  getById(int id) async {
    await repositorio.getById(id);
  }

  saveScan(String value) async {
    final scan = ScandModel(valor: value, tipo: tipo);
    await repositorio.saveScan(scan);
    getByTipo(tipo);
  }

  deleteAllScan() async {
    await repositorio.deleteAllScan();
    scanList = [];
    notifyListeners();
  }

  deleteById(int? id) async {
    await repositorio.deleteById(id);
  }
}
