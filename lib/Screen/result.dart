import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGMI Calculator',
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.black54),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const FaIcon(FontAwesomeIcons.arrowLeft),
            onPressed: () {
              print("object");
            },
          ),
          backgroundColor: Colors.black,
          title: Center(
              child: Text(
                'BGMI Calculator',
                style: TextStyle(color: Colors.white, fontSize: 30),
              )),
        ),
        body: SafeArea(
          child: mainBody(),
        ),
        floatingActionButton: Theme(
          data: ThemeData(accentColor: Colors.purple),
          child: FloatingActionButton(
            onPressed: () {
              print("okkk");
            },
            tooltip: 'Increment',
            child: const Icon(Icons.account_balance_wallet_outlined),
          ),
        ),
      ),
    );
  }
}

class mainBody extends StatefulWidget {
  const mainBody({Key? key}) : super(key: key);

  @override
  State<mainBody> createState() => _mainBodyState();
}

class _mainBodyState extends State<mainBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text("Hello"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text("Hello"),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Text("Hello"),
            ),
          ),

        ],
      ),
    );
  }
}
