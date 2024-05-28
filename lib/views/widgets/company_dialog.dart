import 'package:flutter/material.dart';
import 'package:homework_44/models/company.dart';

import '../../utils/styles.dart';


class CompanyDialog extends StatefulWidget {
  const CompanyDialog({Key? key}) : super(key: key);

  @override
  State<CompanyDialog> createState() => _CompanyDialogState();
}

class _CompanyDialogState extends State<CompanyDialog> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Company Dialog'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Company Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          10.height(),
          TextField(
            controller: _locationController,
            decoration: InputDecoration(
              labelText: 'Location',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          10.height(),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: 'Employee name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          10.height(),
          TextField(
            controller: _locationController,
            decoration: InputDecoration(
              labelText: 'Product',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),

        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            // Save action
            String name = _nameController.text;
            String location = _locationController.text;
            Company company = Company(name: name, location: location);
            Navigator.of(context).pop(company);
          },
          child: const Text('Save'),
        ),
      ],
    );
  }

}
