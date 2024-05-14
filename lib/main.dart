
import 'package:assignment_3_exercise/home_screen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      DevicePreview(
    enabled: true,
    builder: (context) => const MyApp())
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
     // useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
         elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
             backgroundColor: const Color(0xFFDB3022),
             elevation: 5,
             shadowColor: Colors.red,
           )
         )
      ),
    );
  }

}