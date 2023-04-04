import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/counter.provider.page.dart';
import 'package:provider_test/counterstate.dart';

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
          ChangeNotifierProvider(create: (context) => CounterState())
        ],
        child: MaterialApp(
          title: 'state provider',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: CounterProviderPage(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
