import 'package:flutter/material.dart';

import 'dashboard_appbar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme = Theme.of(context).textTheme;
    final isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return SafeArea(
        child: Scaffold(
      appBar: DashboardAppBar(
        isDark: isDark,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(31),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "hi",
                style: TextTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
