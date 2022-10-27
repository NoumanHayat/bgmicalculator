import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyAppMainBody());
}
class MyAppMainBody extends StatelessWidget {
  const MyAppMainBody({super.key});
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

  int selectedWeight = 0;
  int selectedAge = 0;
  double selectedNumber = 0.0;
  int selectedGenderNumber = 0;
  void changeWeight(bool check) {
    setState(() {
      check ? selectedWeight++ : selectedWeight--;
    });
  }
  void changeHeight(bool check) {
    setState(() {
      check ? selectedAge++ : selectedAge--;
    });
  }
  void changeValue(double value) {
    setState(() {
      selectedNumber = value;
    });
  }
  void changeGenderValue(int value) {
    setState(() {
      selectedGenderNumber = value;
    });
  }
  Widget  containerThree(){
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: () {
                    print("ok");
                  },
                  child: Container(
                    child: Reusable(
                      active: false,
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            '$selectedWeight',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      changeWeight(true);
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        changeWeight(false);
                                      },
                                      child: Icon(FontAwesomeIcons.minus)),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(),
                            padding: const EdgeInsets.all(20),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                // child: Container(
                //   child: TextButton(
                //     onPressed: () {
                //       print("true");
                //     },
                //     child: Reusable(
                //       active: selectedNumber == 0 ? true : false,
                //       cardChild: Column(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Icon(
                //             FontAwesomeIcons.male,
                //             size: 100,
                //             color: Colors.white,
                //           ),
                //           SizedBox(
                //             height: 18,
                //           ),
                //           Text(
                //             'MALE',
                //             style: TextStyle(fontSize: 18, color: Colors.white),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Color(0xFF1D1E33),
                //   ),
                // ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: () {
                    print("ok");
                  },
                  child: Container(
                    child: Reusable(
                      active: false,
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Age',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          Text(
                            '$selectedAge',
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                          Container(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                    onPressed: () {
                                      changeHeight(true);
                                    },
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        changeHeight(false);
                                      },
                                      child: Icon(FontAwesomeIcons.minus)),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(),
                            padding: const EdgeInsets.all(20),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                // child: Container(
                //   child: TextButton(
                //     onPressed: () {
                //       print("true");
                //     },
                //     child: Reusable(
                //       active: selectedNumber == 0 ? true : false,
                //       cardChild: Column(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Icon(
                //             FontAwesomeIcons.male,
                //             size: 100,
                //             color: Colors.white,
                //           ),
                //           SizedBox(
                //             height: 18,
                //           ),
                //           Text(
                //             'MALE',
                //             style: TextStyle(fontSize: 18, color: Colors.white),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Color(0xFF1D1E33),
                //   ),
                // ),
              ),
            ),
          ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
  Widget containerTwo() {
    return Container(
      child: Container(
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: GestureDetector(
                    onTap: () {
                      print("ok");
                    },
                    child: Container(
                      child: Reusable(
                        active: false,
                        cardChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Height',
                              style:
                              TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              mainAxisAlignment: MainAxisAlignment.center,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(
                                  (selectedNumber.toInt()).toString(),
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.white),
                                ),
                                Text(
                                  'inch',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                ),
                              ],
                            ),
                            Slider(
                              value: selectedNumber,
                              min: 0.0,
                              max: 60.0,
                              onChanged: (double value) {
                                changeValue(value);
                              },
                            )
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF1D1E33),
                      ),
                    ),
                  ),
                  // child: Container(
                  //   child: TextButton(
                  //     onPressed: () {
                  //       print("true");
                  //     },
                  //     child: Reusable(
                  //       active: selectedNumber == 0 ? true : false,
                  //       cardChild: Column(
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: <Widget>[
                  //           Icon(
                  //             FontAwesomeIcons.male,
                  //             size: 100,
                  //             color: Colors.white,
                  //           ),
                  //           SizedBox(
                  //             height: 18,
                  //           ),
                  //           Text(
                  //             'MALE',
                  //             style: TextStyle(fontSize: 18, color: Colors.white),
                  //           )
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: Color(0xFF1D1E33),
                  //   ),
                  // ),
                ),
              ),
            ]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color((0xFF1D1E33)),
      ),
    );
  }
  Widget containerTop() {
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: () {

                    changeGenderValue(0);
                  },
                  child: Container(
                    child: Reusable(
                      active: selectedGenderNumber == 0 ? true : false,
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.male,
                            size: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),

              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: () {
                    changeGenderValue(1);
                  },
                  child: Container(
                    child: Reusable(
                      active: selectedGenderNumber == 1 ? true : false,
                      cardChild: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.female,
                            size: 100,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF1D1E33),
                    ),
                  ),
                ),
                // child: Container(
                //   child: TextButton(
                //     onPressed: () {
                //       print("true");
                //     },
                //     child: Reusable(
                //       active: selectedNumber == 0 ? true : false,
                //       cardChild: Column(
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         mainAxisAlignment: MainAxisAlignment.center,
                //         children: <Widget>[
                //           Icon(
                //             FontAwesomeIcons.male,
                //             size: 100,
                //             color: Colors.white,
                //           ),
                //           SizedBox(
                //             height: 18,
                //           ),
                //           Text(
                //             'MALE',
                //             style: TextStyle(fontSize: 18, color: Colors.white),
                //           )
                //         ],
                //       ),
                //     ),
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: Color(0xFF1D1E33),
                //   ),
                // ),
              ),
            ),
          ]),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

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
                    print("selectedWeight");
                  }),
            ),
          )
        ],
      ),
    );
  }
}
class Reusable extends StatelessWidget {
  final bool active;
  final Widget cardChild;
  const Reusable({Key? key, required this.cardChild, required this.active})
      : super(key: key);
  // final Color color;
  // final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: active ? Colors.white12 : Colors.transparent,
      ),
    );
  }
}
