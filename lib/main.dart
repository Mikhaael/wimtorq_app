import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wimtorq_app/navigation/app_router.dart';
import 'package:wimtorq_app/navigation/app_state_manager.dart';
import '../screens/home_screen.dart';
import '../screens/splash_screen.dart';
import 'models/pages.dart';

void main() {
  runApp(
    const Wimtorq(),
  );
}

class Wimtorq extends StatefulWidget {
  const Wimtorq({Key? key}) : super(key: key);

  @override
  State<Wimtorq> createState() => _WimtorqState();
}

class _WimtorqState extends State<Wimtorq> {
  final _appStateManager = AppStateManager();

  late AppRouter _appRouter;
  @override
  void initState() {
    _appRouter = AppRouter(appStateManager: _appStateManager);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _appStateManager)
      ],
      child: Consumer<AppStateManager>(
        builder: (context, appManager, child) {
          return MaterialApp(
            theme: ThemeData.dark(),
            home: Router(
              routerDelegate: _appRouter,
              backButtonDispatcher: RootBackButtonDispatcher(),
            ),
          );
        },
      ),
    );
  }
}
