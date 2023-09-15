import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBProvider {
  static DBProvider db = DBProvider._();
  DBProvider._();

  Future<Database> get database async {
    final database = await initBD();
    return database;
  }

  Future<Database> initBD() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'ScansDB.db');

    // Delete the database
    // await deleteDatabase(path);

    /**
     * final Directory databasesPath = await getApplicationDocumentsDirectory();
    String path = join(databasesPath.path, 'ScansDB.db');
     * 
    */

    // Crear base de datos
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE Scans (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            tipo TEXT,
            valor TEXT
          )
      ''');
      },
    );
  }
}
