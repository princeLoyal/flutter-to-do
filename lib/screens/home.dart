import 'package:flutter/material.dart';
import 'package:untitled2/constants/colors.dart';
import 'package:untitled2/model/todo.dart';
import 'package:untitled2/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                SearchBox(),
                List(),
                //()
              ]),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                        left: 20
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.0,
                          spreadRadius: 0.0
                        )],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Add a new todo item',
                          border: InputBorder.none
                        ),
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20
                  ),
                  child: ElevatedButton(
                    child: Text(
                        '+',
                       style: TextStyle(fontSize: 40),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tdBlue,
                      minimumSize: Size(60, 60),
                      elevation: 10
                    ),
                  ),
                )
              ])
          )
       ]),
    );
  }
}


Widget List(){

  final todoList = ToDo.todosList();

  return Expanded(
    child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 20
          ),
          child: Text(
            'All ToDos',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        for( ToDo todo in todoList)
          ToDoItem(todo: todo)
      ],
    ),
  );
}

Widget SearchBox(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
    ),
    child: TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 25
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: tdGrey)
      ),
    ),
  );
}

AppBar _buildAppBar(){
  return AppBar(
    backgroundColor: tdBGColor,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu,
          color: tdBlack,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/profile_photo.jpeg'),
          ),
        )
      ]),
  );
}