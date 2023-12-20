import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharmageddon_web/controllers/home_cubit/home_cubit.dart';
import 'package:pharmageddon_web/core/services/dependency_injection.dart';
import 'package:pharmageddon_web/view/widgets/handle_state.dart';
import 'package:pharmageddon_web/view/widgets/home/medication_widget.dart';
import 'package:pharmageddon_web/view/widgets/loading/medications_loading.dart';

import '../../controllers/medication_cubit/medication_cubit.dart';
import '../../controllers/medication_cubit/medication_state.dart';

class MedicationScreen extends StatelessWidget {
  const MedicationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = MedicationCubit.get(context);
    cubit.getData();
    return BlocConsumer<MedicationCubit, MedicationState>(
      listener: (context, state) {
        if (state is MedicationFailureState) {
          handleState(state: state.state, context: context);
        }
      },
      builder: (context, state) {
        Widget body = MedicationsListWidget(
          data: cubit.medications,
          onRefresh: () async => cubit.getData(),
          onTapCard: AppInjection.getIt<HomeCubit>().onTapCard,
        );
        if (state is MedicationLoadingState) {
          body = MedicationsLoading(onRefresh: () async => cubit.getData());
        }
        return body;
      },
    );
  }
}
