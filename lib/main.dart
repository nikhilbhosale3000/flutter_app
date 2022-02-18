import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habitify_project/Screens/new_task_area.dart';
import 'Screens/routing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        newTaskScreenID: (context) {
          return const NewTaskScreen();
        },
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(CupertinoIcons.add),
          onPressed: () {},
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'TODAY',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'My Journal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.school_rounded),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      //padding: EdgeInsets.all(24),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(CupertinoIcons.sort_up),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      //padding: EdgeInsets.all(24),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                      onPressed: () => {},
                      icon: Icon(
                        CupertinoIcons.rectangle_stack,
                      ),
                      label: Text(
                        'All Habits',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                      onPressed: () => {},
                      icon: Icon(
                        Icons.wb_sunny_rounded,
                      ),
                      label: Text(
                        'Morning',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                      ),
                      onPressed: () => {},
                      icon: Icon(
                        CupertinoIcons.moon_fill,
                      ),
                      label: Text(
                        'Evening',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        primary: Colors.grey,
                      ),
                      onPressed: () => {
                        Navigator.pushNamed(context, newTaskScreenID),
                      },
                      icon: Icon(
                        CupertinoIcons.add,
                      ),
                      label: Text(
                        'New Area',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rectangle_grid_1x2_fill),
                label: 'Journal'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chart_pie), label: 'Progress'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.triangle_fill), label: 'Challenges'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.star), label: 'Upgrade'),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid), label: 'Settings'),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
