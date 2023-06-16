import 'package:flutter/material.dart';
import 'package:international_student_app/firebase_options.dart';
import 'package:international_student_app/providers/news_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:international_student_app/services/application.dart';
import 'package:international_student_app/services/routes.dart';
import 'package:provider/provider.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Application.prefs = await Hive.openBox('sharedPrefs');
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => NewsProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'International Student Australia',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate:
          RoutemasterDelegate(routesBuilder: (context) => Routes.routes),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
