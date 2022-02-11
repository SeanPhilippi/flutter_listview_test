import '../../app_core.dart';

class AppColors {
  factory AppColors() => _instance;

  AppColors._();

  static final AppColors _instance = AppColors._();

  // bar chart colors
  Color primary = HexColor('#214d7b');
  Color secondary = HexColor('#6d276f');
  Color red = HexColor('#e45e5d');
  Color yellow = HexColor('#f5e365');
  Color green = HexColor('#76d96d');
  Color offWhite = HexColor('#fcfdfe');

  // hint text color
  Color blueGrey = HexColor('#7a8da2');
  // input decoration fill color
  Color fieldGrey = HexColor('#f5f6f8');

  // gradient
  LinearGradient gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [HexColor('#214d7b'), HexColor('#6d276f')],
  );
}
