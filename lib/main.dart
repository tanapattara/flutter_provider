import 'package:flutter/material.dart';
import 'package:flutter_provider/counter/counter.dart';
import 'package:flutter_provider/counter/counter_provider.dart';
import 'package:flutter_provider/shopping/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider()),
      //ChangeNotifierProvider(create: (context) => CartProvider()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Provider",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                title: const Text("Provider"),
                bottom: TabBar(
                  indicatorColor: Theme.of(context).colorScheme.primary,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.alarm,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.menu_book,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    )
                  ],
                ),
              ),
              body: const TabBarView(children: [
                CounterPage(),
                Center(
                  child: Text("TEST"),
                ),
                Center(
                  child: Text("TEST"),
                )
              ])),
        ));
  }
}
