import 'package:dependencies_core/dependencies_core.dart';

class DatabaseConfig {
  Future<SupabaseClient> initializeDatabase({
    required String serverUrl,
    required String clientKey,
  }) async {
    return SupabaseClient(serverUrl, clientKey);
  }
}
