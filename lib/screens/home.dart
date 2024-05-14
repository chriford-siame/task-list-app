import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:task_list/constants/colors.dart';
import 'package:task_list/models/tasklist.dart';

class Home extends StatelessWidget {
  final TaskList task_list;
  Home({Key? key, required this.task_list}) : super(key: key);
  final taskList = TaskList.taskList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Container(
            // margin: EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
            child: Column(
              children: [
                // A search bar: input field
                searchBox(),
                // A tasklist section
                headerTitle(),
                _taskList(),
              ],
            )));
  }

  appBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        // ignore: sized_box_for_whitespace
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/avatar-2.jpg'),
          ),
        ),
      ]),
    );
  }

  Widget searchBox() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25,
            ),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: tdGrey)),
      ),
    );
  }

  Widget headerTitle() {
    return Container(
        margin: const EdgeInsets.only(
          top: 5,
          bottom: 20,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Task List',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ));
  }

  Widget _taskList() {
    return Expanded(
      child: ListView(
        children: [
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
          taskListItem(),
        ],
      ),
    );
  }

  Widget taskListItem() {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: ListTile(
        onTap: () {
          print("Hello world!");
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: tdBlue,
        ),
        title: const Text(
          "Go to the gym",
          style: TextStyle(
            color: tdBlack,
            decoration: TextDecoration.lineThrough,
            fontSize: 16,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print("Item deleted successfully");
            },
          ),
        ),
      ),
    );
  }
}
