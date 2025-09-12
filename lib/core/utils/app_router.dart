import 'package:cvision/features/auth/presentation/views/auth_view.dart';
import 'package:cvision/features/home/presentation/views/layout_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/home_view_widgets/detected_skills_view.dart';
import 'package:cvision/features/home/presentation/views/widgets/profile_view_widgets/profile_edit_view_body.dart';
import 'package:cvision/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:cvision/features/settings/presentation/views/settings_view.dart';
import 'package:cvision/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String kSplashView = '/';
  static const String kAuthView = '/AuthView';
  static const String kOnBoardingView = '/OnboardingView';
  static const String kLayoutView = '/LayoutView';
  static const String kSettingsView = '/SettingsView';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: kSplashView,
        path: kSplashView,
        builder: (context, state) => const AuthView(),
      ),
      GoRoute(
        name: kAuthView,
        path: kAuthView,
        builder: (context, state) {
          return const AuthView();
        },
      ),
      GoRoute(
        name: kOnBoardingView,
        path: kOnBoardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        name: kLayoutView,
        path: kLayoutView,
        builder: (context, state) => const LayoutView(),
      ),
      GoRoute(
        name: kSettingsView,
        path: kSettingsView,
        builder: (context, state) => const SettingsView(),
      ),
    ],
  );
}
