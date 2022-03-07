import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gif_search/bloc/bloc/giftbloc_bloc.dart';
import 'package:gif_search/helpers/dependency_injection.dart';
import 'package:gif_search/routes/routes.dart';

void main() {
  DependencyInjection.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ( _ ) => GiftblocBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
           primarySwatch: Colors.blue,
        ),
        initialRoute: 'home',
        routes: appRoutes
      ),
    );
  }
}

