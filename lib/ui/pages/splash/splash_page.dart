import 'dart:convert';

import 'package:flutter/material.dart';

import '../../../configs/routes/assets_path.dart';
import '../../../data/providers/providers.dart';
import '../../../models/models.dart';
import '../../widgets/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool showLogo = true;
  Color? textColor;
  DatabaseProvider databaseProvider = DatabaseProvider();
  @override
  void initState() {
    super.initState();
    checkChache();
  }

  checkChache() async {
    try {
      Map<String, dynamic>? configCache =
          await databaseProvider.getAppConfigData();
      final response = jsonDecode(configCache!['appConfigData']);
      final configModel = ConfigModel.fromJson(response);
      if (configModel.app?.powered == 'Si') {
        showLogo = true;
        textColor = configModel.app!.text;
        setState(() {});
      }
    } catch (e) {
      ///
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RippleAnimationWidget(
          color: Theme.of(context).colorScheme.background.withOpacity(.1),
          delay: const Duration(milliseconds: 500),
          repeat: true,
          minRadius: 150,
          ripplesCount: 10,
          duration: const Duration(milliseconds: 6 * 500),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Image.asset(
              AssetsPath.appIcon,
              height: 200,
            ),
          ),
        ),
      ),
      bottomNavigationBar: !showLogo
          ? null
          : IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Text(
                      'Loading...',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Powered by',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontSize: 12),
                    ),
                    Image.asset(
                      AssetsPath.logo,
                      width: 170,
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 30))
                  ],
                ),
              ),
            ),
    );
  }
}
