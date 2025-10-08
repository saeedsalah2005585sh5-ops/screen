import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  List<String> names = ["saeed", "ali", "amin,saeed", "ali", "amin,saeed", "ali", "aminGridView"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view builder"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Container(
            height: 55,
            color: Colors.teal[900],
            child: Center(child: Text(names[index])),

          );
        },
      ),
    );
  }
}
