import '../app_core.dart';

class CustomTextField extends StatelessWidget {
  @required
  final String hintText;
  final TextEditingController controller;
  // final void Function(String) onChanged;
  final double height;
  final String helperText, initialValue, suffixText;
  final String Function(String) validator;
  final bool isRequired, isObscured, enabled;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  // final void Function(String) onFieldSubmitted;

  const CustomTextField({
    this.enabled = true,
    this.height = 70,
    this.controller,
    // this.onChanged,
    this.hintText,
    this.helperText = ' ',
    this.initialValue,
    this.suffixText,
    this.validator,
    this.isRequired = false,
    this.isObscured = false,
    this.keyboardType,
    this.inputFormatters,
    // this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        style: TextStyle(
          color: enabled ? Colors.black : Colors.grey,
        ),
        enabled: enabled,
        controller: controller,
        // onChanged: onChanged,
        // onFieldSubmitted: onFieldSubmitted,
        initialValue: initialValue,
        textInputAction: TextInputAction.next,
        obscureText: isObscured,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        decoration: InputDecoration(
          suffixText: suffixText,
          suffixStyle: TextStyle(
            color: enabled ? AppColors().blueGrey : Colors.grey,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          hintText: hintText,
          helperText: helperText,
          fillColor: AppColors().fieldGrey,
          filled: true,
          border: const OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[350],
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: !enabled ? Colors.grey[350] : Colors.grey),
          ),
          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
        validator: validator,
      ),
    );
  }
}
