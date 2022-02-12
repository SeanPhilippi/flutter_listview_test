import '../app_core.dart';

class UserList extends StatelessWidget {
  final List<User> items;

  const UserList({
    @required this.items,
  });

  @override
  Widget build(BuildContext context) {
    print('==items: $items');
    return SizedBox(
      width: 500,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, i) {
          return ListTile(
            title: Text('${items[i].firstName} ${items[i].lastName}'),
            subtitle: Text(items[i].email),
          );
        },
      ),
    );
  }
}
