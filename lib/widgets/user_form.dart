import '../app_core.dart';

class UserForm extends StatefulWidget {
  final device;

  const UserForm({
    this.device,
    Key key,
  }) : super(key: key);

  @override
  _UserFormState createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  var device;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    device = widget.device;
  }

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _addUser(data) async {}

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20,
        left: 40,
        right: 40,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextField(
              hintText: 'First Name',
              controller: _firstNameController,
              validator: (value) => Validators.notEmptyValidator(value),
            ),
            CustomTextField(
              hintText: 'Last Name',
              controller: _lastNameController,
              validator: (value) => Validators.notEmptyValidator(value),
            ),
            CustomTextField(
              hintText: 'Email',
              controller: _emailController,
              validator: (value) => Validators.notEmptyValidator(value),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                    onPressed: () {
                      _addUser({
                        'firstName': _firstNameController.text(),
                        'lastName': _lastNameController.text(),
                        'email': _emailController.text(),
                      });
                      if (_formKey.currentState.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text('Sumbit'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
