import 'package:auto_route/auto_route.dart';
import 'package:vegas_lit/provider/navigation_bloc.dart';
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
        title: 'Vegas Lit',
        onGenerateRoute: AppRouter(),
        theme: ThemeData(
          brightness: Brightness.dark,
          canvasColor: MyColors.darkGrey,
          primaryColor: MyColors.darkGrey,
          primaryColorLight: MyColors.lightGrey,
          primaryColorDark: MyColors.darkGrey,
          textTheme: TextTheme(), // TODO: change global text colors
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        builder: ExtendedNavigator.builder(
          router: AppRouter(),
          initialRoute: Routes.root,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
