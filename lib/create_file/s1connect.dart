import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  static Database? _database;

  static const String _dbName = 'app.db';
  static const int _dbVersion = 1;

  static const String tableUsers = 'users';
  static const String tableStudents = 'students';

  static const String columnId = 'id';
  static const String columnEmail = 'email';
  static const String columnPassword = 'password';
  static const String columnName = 'name';
  static const String columnAge = 'age';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    try {
      final String path = join(await getDatabasesPath(), _dbName);
      return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
    } catch (e) {
      print('Error initializing database: $e');
      rethrow;
    }
  }

  Future<void> _onCreate(Database db, int version) async {
    try {
      // Users table
      await db.execute('''
        CREATE TABLE $tableUsers(
          $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
          $columnEmail TEXT UNIQUE NOT NULL,
          $columnPassword TEXT NOT NULL
        )
      ''');

      // Students table
      await db.execute('''
        CREATE TABLE $tableStudents(
          $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
          $columnName TEXT NOT NULL,
          $columnAge INTEGER NOT NULL
        )
      ''');

      print('Database tables created successfully');
    } catch (e) {
      print('Error creating tables: $e');
      rethrow;
    }
  }

  // User methods
  Future<int> registerUser(String email, String password) async {
    try {
      final db = await database;
      return await db.insert(tableUsers, {
        columnEmail: email,
        columnPassword: password,
      }, conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (e) {
      print('Error registering user: $e');
      rethrow;
    }
  }

  Future<bool> loginUser(String email, String password) async {
    try {
      final db = await database;
      final result = await db.query(
        tableUsers,
        where: '$columnEmail = ? AND $columnPassword = ?',
        whereArgs: [email, password],
      );
      return result.isNotEmpty;
    } catch (e) {
      print('Error during login: $e');
      rethrow;
    }
  }

  Future<bool> userExists(String email) async {
    try {
      final db = await database;
      final result = await db.query(
        tableUsers,
        where: '$columnEmail = ?',
        whereArgs: [email],
      );
      return result.isNotEmpty;
    } catch (e) {
      print('Error checking user existence: $e');
      rethrow;
    }
  }

  // Student methods
  Future<int> addStudent(String name, int age) async {
    try {
      final db = await database;
      return await db.insert(tableStudents, {columnName: name, columnAge: age});
    } catch (e) {
      print('Error adding student: $e');
      rethrow;
    }
  }

  Future<List<Map<String, dynamic>>> getStudents() async {
    try {
      final db = await database;
      return await db.query(tableStudents, orderBy: '$columnId DESC');
    } catch (e) {
      print('Error fetching students: $e');
      rethrow;
    }
  }

  Future<void> close() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
}
}
}