import 'package:flutter/material.dart';
import 'package:get_api_class1_asif_taj/presentation/Screens/Home_Screen/home_view.dart';
import 'package:get_api_class1_asif_taj/presentation/Screens/Home_Screen/provider/home_provider.dart';
import 'package:get_api_class1_asif_taj/presentation/Screens/Home_Screen/provider/home_provider_practive.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => HomeProviderPractice(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Get Api',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomeView(), //HomeViewExample(
      ),
    );
  }
}
