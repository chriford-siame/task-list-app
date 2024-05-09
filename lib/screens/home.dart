import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:task_list/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Container(
            // margin: EdgeInsets.all(20),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                // A search bar: input field
                searchBox(),
                taskList(),
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
  Widget taskList() {
    return Expanded(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 50,
              bottom: 20,
            ),
            child: const Text(
              'Task List',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
          taskListItem(),



        ],
      ),
    );
  }
  Widget taskListItem() {
    return Container(
      child: ListTile(
        // onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box, color: tdBlue,),
        title: Text("text"),
      ),
    );
  }




}
