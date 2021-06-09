import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget());
}

var count = 0;

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ignite - Trilha Flutter',
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xff007FFF),
        scaffoldBackgroundColor: Color(0xff212121),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Color(0xff007FFF)),
      ),
    );
  }
}

//AppBar
AppBar headerNav() {
  return AppBar(
    title: Text('Desafio 01 - Estrutura da aplicação'),
    centerTitle: false,
  );
}

//Home Page
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(),
      body: BodyText(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count = count + 1;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

//Body Text
class BodyText extends StatelessWidget {
  const BodyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Contagem de toques no botão: $count',
        style: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      ),
    );
  }
}
