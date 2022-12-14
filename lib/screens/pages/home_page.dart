import 'package:api_adres_app/constants/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

import '../../constants/app_text/app_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorBlack,
        centerTitle: true,
        title: const Text(
          AppText.titleText,
        ),
      ),
    );
  }
}
