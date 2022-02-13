import '../app_core.dart';

class Database {
  PostgreSQLConnection connection;
  PostgreSQLResult addUserResult;

  Database() {
    connection = connection == null || connection.isClosed
        ? PostgreSQLConnection(
            'localhost',
            5432,
            'user-db',
            username: 'postgres',
            password: 'password',
          )
        : connection;
  }

  Future addUser() async {
    try {
      await connection.open();
      await connection.transaction((addUserConn) async {
        addUserResult = await addUserConn.query(
          'SELECT * FROM user-db'
        )
      })
    } catch (err) {
      print('addUser error: $err');
    }
  }
}
