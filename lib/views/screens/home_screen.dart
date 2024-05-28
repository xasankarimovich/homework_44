import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework_44/utils/styles.dart';

import '../widgets/add_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onDoubleTap: () {
          showDialog(
              context: context,
              builder: (ctx) {
                return AddDialog();
              });
        },
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://img.freepik.com/free-photo/fresh-coffee-steams-wooden-table-close-up-generative-ai_188544-8923.jpg",
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SafeArea(
                child: Text(
                  "Welcome to my Company",
                  style: AppTextStyles.HeadLinebWhite,
                ),
              ),
              Row(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
