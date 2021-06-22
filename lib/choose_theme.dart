import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'state.dart';
import 'themes.dart';

class ChooseThemePage extends StatefulWidget {
  const ChooseThemePage({ Key? key }) : super(key: key);

  @override
  _ChooseThemePageState createState() => _ChooseThemePageState();
}

class _ChooseThemePageState extends State<ChooseThemePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeState>(
      builder: (_, state, __) => Scaffold(
        appBar: AppBar(
          foregroundColor: state.theme.bodyColor,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: Text('Choose Theme'),
        ),
        body: Column(
          children: [
            Spacer(),
            Center(
              child: Text(
                state.theme.name, 
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 64,
              child: ListView.builder(
                itemCount: themes.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, i) => GestureDetector(
                  child: Container(
                    width: 80, height: 64,
                    margin: EdgeInsets.only(left: i == 0 ? 0 : 10),
                    decoration: BoxDecoration(
                      color: themes[i].backgroundColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onTap: () {
                    state.change(themes[i]);
                  },
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}