import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'choose_theme.dart';
import 'state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
    create: (_) => ThemeState(),
    child: App(),
  ));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(
      builder: (_, state, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Switch Theme Demo',
        theme: ThemeData(
          brightness: state.theme.brightness,
          primarySwatch: state.theme.primarySwatch,
          scaffoldBackgroundColor: state.theme.backgroundColor,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: state.theme.bodyColor,
                displayColor: state.theme.displayColor,
              ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(state.theme.buttonColor),
              foregroundColor: MaterialStateProperty.all<Color>(state.theme.buttonTextColor),
            ),
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 2;

  String get _title {
    switch (_tabIndex) {
      case 0:
        return 'Home';
      case 1:
        return 'Map';
      case 2:
        return 'Setting';
      case 3:
        return 'Message';
      case 4:
        return 'Profile';
      default:
        return '';
    }
  }

  Widget get _body {
    if (_tabIndex == 2) {
      return Center(
        child: ElevatedButton(
          child: Text('Choose Theme'),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (_) => ChooseThemePage(),
              ),
            );
          }, 
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(
      builder: (_, state, __) => Scaffold(
        appBar: AppBar(
          foregroundColor: state.theme.bodyColor,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Text(_title),
        ),
        body: _body,
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: state.theme.navbarColor,
          items: [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.map),
            TabItem(icon: Icons.settings),
            TabItem(icon: Icons.message),
            TabItem(icon: Icons.people),
          ],
          initialActiveIndex: _tabIndex,
          onTap: (i) {
            if (mounted) {
              setState(() {
                _tabIndex = i;
              });
            }
          },
        ),
      ),
    );
  }
}
