import './app_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // final database = openDatabase(
  //   const dbPath = './home';
  //   // Set the path to the database. Note: Using the `join` function from the
  //   // `path` package is best practice to ensure the path is correctly
  //   // constructed for each platform.
  //   join(dbPath, 'doggie_database.db'),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Listview Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: []),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              BusinessForm(),
            ],
          ),
        ),
      ),
    );
  }
}
