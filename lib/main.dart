import 'package:flutter/material.dart';
import 'package:http_services/ui/home_screen/controller/home_controller.dart';
import 'package:http_services/ui/home_screen/view/home_view.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeController())],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
