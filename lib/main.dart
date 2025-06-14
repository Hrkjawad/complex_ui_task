import 'package:complex_ui_task/utilities/app_main_color.dart';
import 'package:complex_ui_task/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'auth_ui/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'utilities/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Responsive.init(context);
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Complex UI Task',
        theme: ThemeData(
          primarySwatch: MaterialColor(AppMainColor.primaryColor.toARGB32(), AppMainColor.blueColor),
          useMaterial3: false,
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
              return TextStyle(
                fontSize: states.contains(WidgetState.selected) ? 12 : 10,
                color: states.contains(WidgetState.selected) ? Colors.blue : AppMainColor.textColor,
              );
            }),
          ),
        ),
        home: const SignUp(),
      ),
    );
  }
}