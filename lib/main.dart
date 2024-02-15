import 'package:fa2/provider/auth_provider.dart';
import 'package:fa2/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Provide valid FirebaseOptions here
  var firebaseOptions = FirebaseOptions(
    apiKey: 'AIzaSyCUZVdHQQlk1H4CSDznL1qpayk3-_DykBU',
    authDomain: 'fa-bx-f33e7.firebaseapp.com',
    projectId: 'fa-bx-f33e7',
    storageBucket: 'fa-bx-f33e7.appspot.com',
    messagingSenderId: '955644241974',
    appId: '1:955644241974:android:acc36d7118360e80961097',
    measurementId: '7532805500',
  );

  await Firebase.initializeApp(options: firebaseOptions);
  runApp(
    MaterialApp( // Use MaterialApp instead of GetMaterialApp
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WelcomeScreen(),
        title: "FlutterPhoneAuth",
      ),
    );
  }
}
