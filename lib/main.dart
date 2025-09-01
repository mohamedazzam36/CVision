import 'package:cvision/core/service_locator/service_locator.dart';
import 'package:cvision/core/utils/app_router.dart';
import 'package:cvision/core/utils/simple_bloc_observer.dart';
import 'package:cvision/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'features/home/presentation/manager/layout_cubit/layout_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupServiceLocator();

  Bloc.observer = SimpleBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const CVision());
}

class CVision extends StatelessWidget {
  const CVision({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => HomeCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => LayoutCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter.router,
      ),
    );
  }
}
