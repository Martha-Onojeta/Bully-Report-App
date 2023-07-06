import 'package:ars/provider/student_provider.dart';
import 'package:ars/provider/teacher_provider.dart';
import 'package:ars/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => StudentProvider(),),
        ChangeNotifierProvider(create: (context) => TeachetProvider(),)
     
      ],
      child: const MaterialApp(
       debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}

