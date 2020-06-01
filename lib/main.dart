import 'package:conve_say/src/pages/home_page.dart';
import 'package:conve_say/src/providers/int_text_provider.dart';
import 'package:conve_say/src/providers/tab2_provider.dart';
import 'package:conve_say/src/providers/tab3_provider.dart';
import 'package:conve_say/src/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new IntTextProvider(),),
        ChangeNotifierProvider(create:(_) => new Tab2Provider()),
        ChangeNotifierProvider(create: (_) => new Tab3Provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SayriLaser',
        theme: miTema,
        initialRoute: '/',
        routes: {'/': (BuildContext context) => HomePage()},
      ),
    );
  }
}
