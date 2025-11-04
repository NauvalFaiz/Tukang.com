import 'package:flutter/material.dart';
import 'routes/app_router.dart';
import 'core/constants/app_colors.dart';

class TukangApp extends StatelessWidget {
  const TukangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tukang App',
      theme: ThemeData(
        colorSchemeSeed: AppColors.primary,
        useMaterial3: true,
      ),
      routerConfig: AppRouter().router,
      debugShowCheckedModeBanner: false,
    );
  }
}
