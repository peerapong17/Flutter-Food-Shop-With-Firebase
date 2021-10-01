// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:login_ui/food-shop/home/home.dart';
// import 'package:provider/provider.dart';

// import 'food-shop/state/cart_provider.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<CartProvider>(
//       create: (context) => CartProvider(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primaryIconTheme: IconThemeData(color: Colors.black),
//           primarySwatch: Colors.pink,
//           primaryColor: Colors.limeAccent.shade400,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: Home(),
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/food-shop/home/home.dart';
import 'package:login_ui/food-shop/state/bill_provider.dart';
import 'package:provider/provider.dart';

import 'food-shop/state/cart_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => BillProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.black),
          primarySwatch: Colors.pink,
          primaryColor: Colors.limeAccent.shade400,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      ),
    );
  }
}
