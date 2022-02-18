import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  _NewTaskScreenState createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Area',
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: CupertinoColors.systemGrey5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 7.0),
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      CupertinoIcons.folder_fill,
                    ),
                    // iconSize: 30,
                    color: Colors.blue,
                    //splashColor: Colors.purple,
                    onPressed: () {},
                  ),
                  const Flexible(
                      child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter New Area',
                      border: InputBorder.none,
                    ),
                  ))
                ],
              ),
            ),
            Text('COLOR'),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 7.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: Text('Color Enabled'),
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        CupertinoIcons.checkmark_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.checkmark_alt,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      CupertinoIcons.checkmark_alt,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
