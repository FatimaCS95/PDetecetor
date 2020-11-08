import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 8),
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            height: 500,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                InkWell(
                  highlightColor: Colors.indigo.withOpacity(0.5),
                  splashColor: Colors.indigo.withOpacity(0.5),
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/flour.png',
                                  height: 100,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  'Grains',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.indigo.withOpacity(0.5),
                  splashColor: Colors.indigo.withOpacity(0.5),
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/vegetables.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Vegetables',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.indigo.withOpacity(0.5),
                  splashColor: Colors.indigo.withOpacity(0.5),
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/fruits.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Fruits',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.indigo.withOpacity(0.5),
                  splashColor: Colors.indigo.withOpacity(0.5),
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Dairy.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Dairy',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.indigo.withOpacity(0.5),
                  splashColor: Colors.indigo.withOpacity(0.5),
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/protein.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Meat',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  highlightColor: Colors.indigo.withOpacity(0.5),
                  splashColor: Colors.indigo.withOpacity(0.5),
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    shadowColor: Colors.black,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/grocery.png',
                            height: 100,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Others',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
