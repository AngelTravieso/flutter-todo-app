import 'package:go_router/go_router.dart';
import 'package:todo_app/presentation/screens/login_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => LoginScreen(),
    )
  ],
);
