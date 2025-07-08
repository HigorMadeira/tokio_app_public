import 'package:app_tokio/app_page.dart';
import 'package:app_tokio/application_start_config.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _environmentsConfig();
  await ApplicationStartConfig().configureApp(const AppPage());
}

Future<void> _environmentsConfig() async {
  await EnvironmentsVariables.loadEnvs(
    "release.env",
  );
}
