// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'dart:io' as io;

// class OrderPageDBHelper {
//   static Database? _db;

//   Future<Database?> get db async {
//     if (_db != null) {
//       return _db!;
//     }

//     _db = await initDatabase();
//   }

//   initDatabase() async {
//     io.Directory documentDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentDirectory.path, 'orderpage.db');
//     var db = await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//     return db;
//   }

//   _onCreate(Database db, int version) async {
//     await db.execute(
//         'CREATE TABLE order (id INTEGER PRIMARY KEY, svgAsset VARCHAR UNIQUE, title TEXT, description TEXT)');
//   }

//   Future<OrderPage> insert(OrderPage orderPage) async {
//     var dbClient = await db;
//     await dbClient!.insert('order', order.toMap());
//     return order;
//   }
// }
