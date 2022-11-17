import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyWidget01 extends StatelessWidget {
  const MyWidget01({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List<ToDoListItem> todoList = [
    ToDoListItem(
      title: 'First item',
      timeDilation: false,
    ),
    ToDoListItem(
      title: 'Third item',
      timeDilation: false,
    ),
    ToDoListItem(
      title: 'Second item',
      timeDilation: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My To Do List'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: clearList,
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return todoList[index];
        },
      ),
    );
  }

  void clearList() {
    setState(() {
      todoList.clear();
    });
  }
}

class ToDoListItem extends StatefulWidget {
  ToDoListItem({super.key, required this.title, this.timeDilation = false});

  final String title;
  bool timeDilation;

  @override
  State<ToDoListItem> createState() => _ToDoListItemState();
}

class _ToDoListItemState extends State<ToDoListItem> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.title),
      value: widget.timeDilation,
      onChanged: (bool? value) {
        setState(() {
          widget.timeDilation = !widget.timeDilation;
        });
      },
    );
  }
}
