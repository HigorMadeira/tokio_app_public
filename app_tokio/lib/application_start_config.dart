import 'package:backend/backend.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class ApplicationStartConfig {
  Future<void> configureApp(Widget appWidget) async {
    final supabaseClient = await _configureDatabase();
    final logger = _configureLogger();

    appWidget = await _configureRepositories(
      appWidget,
      logger,
      supabaseClient,
    );
    runApp(appWidget);
  }
}

Future<SupabaseClient> _configureDatabase() async {
  return DatabaseConfig().initializeDatabase(
    serverUrl: EnvironmentsVariables.param('SUPABASEURL')!,
    clientKey: EnvironmentsVariables.param('SUPABASEANONKEY')!,
  );
}

Logger _configureLogger() {
  return Logger(
    ((error, {hint, stackTrace}) {
      debugPrint('⚠️ Logger error: $hint - $error');
    }),
  );
}

Future<MultiRepositoryProvider> _configureRepositories(
  Widget appWidget,
  ILogger logger,
  SupabaseClient supabaseClient,
) async {
  final localStorage = SharedPreferencesLocalStorage();
  await localStorage.instance;
  return MultiRepositoryProvider(
    providers: [
      RepositoryProvider<ILocalStorage>.value(value: localStorage),
      RepositoryProvider<SupabaseClient>.value(value: supabaseClient),
      RepositoryProvider<IAuthDatasource>(
        create: (context) => AuthDatasource(
          client: context.read(),
        ),
      ),
      RepositoryProvider<IAuthRepository>(
          create: (context) => AuthRepository(
                logger,
                context.read(),
                context.read(),
              )),
    ],
    child: appWidget,
  );
}
