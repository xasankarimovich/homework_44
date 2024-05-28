import 'package:flutter/material.dart';
import 'package:homework_44/utils/styles.dart';

import '../screens/navigation_panel.dart';

class AddDialog extends StatefulWidget {
  const AddDialog({super.key});

  @override
  State<AddDialog> createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shadowColor: Colors.yellow,
      title: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
            return NavigationPanel();
          },),);
        },
        child: Text(
          "Assalomu aalaykum, xush kelibsiz bizng Companiyaga, keyingi amallarni bajarish uchun text ustiga bosing",
          style: AppTextStyles.Paragraphblack,
        ),
      ),
    );
  }
}
