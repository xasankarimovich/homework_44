import 'package:flutter/material.dart';
import 'package:homework_44/controllers/company_controllers.dart';
import 'package:homework_44/utils/styles.dart';
import 'package:lottie/lottie.dart';

import '../widgets/company_dialog.dart';

class NavigationPanel extends StatefulWidget {
  const NavigationPanel({super.key});

  @override
  State<NavigationPanel> createState() => _NavigationPanelState();
}

class _NavigationPanelState extends State<NavigationPanel> {
  final companyController = CompanyController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Lottie animation as background
          Positioned.fill(
            child: Lottie.asset(
              'assets/Animation.json',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () async {
                    final response = await showDialog(
                      context: context,
                      builder: (ctx) {
                        return const CompanyDialog();
                      },
                    );

                    if (response != null) {
                      companyController.addCompany(response);
                      setState(() {});
                    }
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: Card(
                      color: Colors.blue,
                      clipBehavior: Clip.hardEdge,
                      child: Center(
                        child: Text(
                          "Companies",
                          style: AppTextStyles.Paragraphblack,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
