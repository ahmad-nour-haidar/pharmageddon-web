import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharmageddon_web/core/constant/app_color.dart';
import 'package:pharmageddon_web/core/functions/functions.dart';
import '../../controllers/home_cubit/home_cubit.dart';
import '../../controllers/home_cubit/home_state.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BorderRadius get borderRadius {
    if (isEnglish()) {
      return const BorderRadius.only(
        topLeft: Radius.circular(25),
        bottomLeft: Radius.circular(25),
      );
    }
    return const BorderRadius.only(
      topRight: Radius.circular(25),
      bottomRight: Radius.circular(25),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.contentColorBlue,
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = HomeCubit.get(context);
          return Row(
            children: [
              CustomDrawer(
                onTap: cubit.changeScreen,
                currentScreen: cubit.currentScreen,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: borderRadius,
                  ),
                  child: Column(children: [
                    CustomAppBar(onFieldSubmitted: cubit.onFieldSubmitted),
                    const Gap(10),
                    Expanded(child: cubit.screen)
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
