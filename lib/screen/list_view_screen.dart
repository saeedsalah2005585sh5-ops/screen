import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 55,
            color: Colors.tealAccent,
            child: const Center(child: Text("Enter A")) ,

          ),
          Container(
            height: 60,
            color: Colors.purpleAccent,
            child: const Center(child: Text("Enter B")) ,

          ),
          Container(
            height: 65,
            color: Colors.orange,
            child: const Center(child: Text("Enter C")) ,

          ),
          Container(
            height: 65,
            color: Colors.teal,
            child: const Center(child: Text("Enter D")) ,

          ),
          Container(
            height: 60,
            color: Colors.orange,
            child: const Center(child: Text("Enter C")) ,

          ),
          Container(
            height: 65,
            color: Colors.purple,
            child: const Center(child: Text("Enter C")) ,

          ),
          Container(
            height: 65,
            color: Colors.black,
            child: const Center(child: Text("Enter C")) ,

          ),
        ],
      ),
    );
  }
}
