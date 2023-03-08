import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/providers/provider_shop.dart';
import 'package:provider_2/screens/cart_screen.dart';
import 'package:provider_2/screens/home_screen.dart';

void main() {
  runApp( ChangeNotifierProvider(create: (_)=>ShopList(),
  child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(_)=>HomeScreen(),
        '/shopList':(_)=>CartScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}



