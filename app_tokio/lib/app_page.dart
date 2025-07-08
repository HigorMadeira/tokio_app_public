import 'package:app_tokio/auth/auth_page.dart';
import 'package:application_core/auth/auth_cubit.dart';
import 'package:application_core/sign_up/sign_up_cubit.dart';
import 'package:dependencies_core/dependencies_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui_core/ui_core.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<AuthCubit>(
        create: (context) => AuthCubit(
          context.read(),
          context.read(),
        )..checkIfSavedUser(),
        lazy: false,
      ),
      BlocProvider<SignUpCubit>(
        create: (context) => SignUpCubit(
          context.read(),
        ),
        lazy: false,
      ),
    ], child: const AppView());
  }
}

class AppView extends StatefulWidget {
  const AppView({
    super.key,
  });

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  @override
  void dispose() {
    FlashHelper.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    FlashHelper.init(context);

    return Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(
        title: "APP TOKIO",
        theme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        builder: OverlayService.init(),
        locale: const Locale('pt', 'BR'),
        home: const AuthPage(),
        supportedLocales: const [
          Locale('pt', 'BR'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
