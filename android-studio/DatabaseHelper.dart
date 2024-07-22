import 'package:intern_study/Dog.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

abstract class DatabaseHelper {
  static Database? _database;

  static Future<void> init() async{

    try{
      if(_database != null){
        return;
      }
      String dbPath = await getDatabasesPath();
      print(dbPath);
      String myPath = join(dbPath, "mydb.db");
      print(myPath);

      _database = await openDatabase(myPath, singleInstance: true, version: 1, onCreate: _onCreate);
    } catch (e) {
      print(e);
    }

  }

  static void _onCreate(Database db, int version) async{
    String sqlQuery = "CREATE TABLE dogs (id INTEGER PRIMARY KEY AUTOINCREMENT, name STRING)";
    await db.execute(sqlQuery);
  }

  static Future<int> insert(String table, Dog model) async{
    return await _database!.insert(table, model.toJson());
  }

  static Future<int> update(String table, Dog model) async{
    return await _database!.update(table, model.toJson(), where: "id = ?", whereArgs: [model.id]);
  }

  static Future<int> delete(String table, Dog model) async{
    return await _database!.delete(table, where: "id = ?", whereArgs: [model.id]);
  }

  static Future<List<Map<String, dynamic>>> query(String table) async {
    return await _database!.query(table);
  }

}