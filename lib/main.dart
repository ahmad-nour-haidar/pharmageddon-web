import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pharmageddon_web/controllers/effect_category_cubit/effect_category_cubit.dart';
import 'package:pharmageddon_web/controllers/home_cubit/home_cubit.dart';
import 'package:pharmageddon_web/controllers/orders_cubit/orders_cubit.dart';
import 'package:pharmageddon_web/controllers/search_cubit/search_cubit.dart';
import 'package:pharmageddon_web/routes.dart';
import 'controllers/add_cubit/add_cubit.dart';
import 'controllers/local_controller.dart';
import 'controllers/manufacturer_cubit/manufacturer_cubit.dart';
import 'controllers/medication_cubit/medication_cubit.dart';
import 'controllers/medication_details_cubit/medication_details_cubit.dart';
import 'core/constant/app_constant.dart';
import 'core/constant/app_local_data.dart';
import 'core/constant/app_size.dart';
import 'core/functions/functions.dart';
import 'core/localization/translation.dart';
import 'core/resources/theme_manager.dart';
import 'core/services/dependency_injection.dart';
import 'my_bloc_observer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppInjection.initial();
  initialUser();
  Bloc.observer = AppInjection.getIt<MyBlocObserver>();
  if (kIsWeb) {
    setPathUrlStrategy();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.initial(context);
    final controller = AppInjection.getIt<LocaleController>();
    var initialRoute = AppRoute.login;
    if (AppLocalData.user != null && AppLocalData.user!.authorization != null) {
      initialRoute = AppRoute.home;
    }
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(
          create: (context) => AppInjection.getIt<HomeCubit>(),
        ),
        BlocProvider<SearchCubit>(
          create: (context) => AppInjection.getIt<SearchCubit>(),
        ),
        BlocProvider<MedicationDetailsCubit>(
          create: (context) => AppInjection.getIt<MedicationDetailsCubit>(),
        ),
        BlocProvider<MedicationCubit>(
          create: (context) => AppInjection.getIt<MedicationCubit>(),
        ),
        BlocProvider<ManufacturerCubit>(
          create: (context) => AppInjection.getIt<ManufacturerCubit>(),
        ),
        BlocProvider<EffectCategoryCubit>(
          create: (context) => AppInjection.getIt<EffectCategoryCubit>(),
        ),
        BlocProvider<AddCubit>(
          create: (context) => AppInjection.getIt<AddCubit>(),
        ),
        BlocProvider<OrdersCubit>(
          create: (context) => AppInjection.getIt<OrdersCubit>(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstant.isEnglish ? 'Pharmageddon' : 'فارماجيدون',
        locale: controller.locale,
        translations: MyTranslation(),
        theme: themeData(),
        routes: routes,
        initialRoute: initialRoute,
      ),
    );
  }
}

/// flutter run -d chrome --web-renderer html // to run the app
//
// flutter build web --web-renderer html --release // to generate a production build
