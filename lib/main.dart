import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BGMI Calculator',
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.white, scaffoldBackgroundColor: Colors.black54),
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
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
              child: containerTop(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: containerTwo(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: containerThree(),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.green),
                    )),
                  ),
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    print("true");
                  }),
            ),
          )
        ],
      ),
    );
  }
}

class containerTop extends StatefulWidget {
  const containerTop({Key? key}) : super(key: key);

  @override
  State<containerTop> createState() => _containerTopState();
}

class _containerTopState extends State<containerTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      child: Text(
                        'Flutter Demo ',
                        style: TextStyle(fontSize: 13.0, color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1D1E33),
                      ),
                    ))),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      child: Text(
                        'Flutter Demo ',
                        style: TextStyle(fontSize: 13.0, color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1D1E33),
                      ),
                    ))),
          ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class containerTwo extends StatefulWidget {
  const containerTwo({Key? key}) : super(key: key);

  @override
  State<containerTwo> createState() => _containerTwoState();
}

class _containerTwoState extends State<containerTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Flutter Demo Home Page',
        style: TextStyle(fontSize: 13.0, color: Colors.black),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color((0xFF1D1E33)),
      ),
    );
  }
}

class containerThree extends StatefulWidget {
  const containerThree({Key? key}) : super(key: key);

  @override
  State<containerThree> createState() => _containerThreeState();
}

class _containerThreeState extends State<containerThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      child: Text(
                        'Flutter Demo ',
                        style: TextStyle(fontSize: 13.0, color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1D1E33),
                      ),
                    ))),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      child: Text(
                        'Flutter Demo ',
                        style: TextStyle(fontSize: 13.0, color: Colors.black),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1D1E33),
                      ),
                    ))),
          ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
