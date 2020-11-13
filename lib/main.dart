import 'package:auto_route/auto_route.dart';
import 'package:vegas_lit/bloc/navigation_bloc.dart';
import 'package:vegas_lit/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegas_lit/style.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: MaterialApp(
        title: 'Bottom Navigation Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: MyColors.lightGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: ExtendedNavigator.builder(
          router: AppRouter(),
          initialRoute: Routes.root,
        ),
      ),
    );
  }
}
