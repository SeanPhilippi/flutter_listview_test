import '../app_core.dart';

class BusinessForm extends StatefulWidget {
  final device;

  const BusinessForm({
    this.device,
    Key? key,
  }) : super(key: key);

  @override
  _BusinessFormState createState() => _BusinessFormState();
}

class _BusinessFormState extends State<BusinessForm> {
  var device;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    device = widget.device;
  }

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
            TextFormField(
              validator: (val) {
                if (val == null || val.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              style: const TextStyle(
                color: Colors.black,
              ),
              // controller: nameController(),
              decoration: InputDecoration(
                suffixText: 'Name',
                suffixStyle: const TextStyle(
                  color: Colors.grey,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                hintText: 'hint text',
                helperText: 'helper text',
                fillColor: Colors.grey[300],
                filled: true,
                border: const OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                ),
                errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
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
                      if (_formKey.currentState!.validate()) {
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
