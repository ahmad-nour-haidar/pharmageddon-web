import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:pharmageddon_web/controllers/home_cubit/home_cubit.dart';
import 'package:pharmageddon_web/controllers/medication_details_cubit/medication_details_cubit.dart';
import 'package:pharmageddon_web/core/class/validation.dart';
import 'package:pharmageddon_web/core/constant/app_color.dart';
import 'package:pharmageddon_web/core/constant/app_svg.dart';
import 'package:pharmageddon_web/core/constant/app_text.dart';
import 'package:pharmageddon_web/core/extensions/translate_numbers.dart';
import 'package:pharmageddon_web/core/functions/functions.dart';
import 'package:pharmageddon_web/core/services/dependency_injection.dart';
import 'package:pharmageddon_web/model/medication_model.dart';
import 'package:pharmageddon_web/view/widgets/custom_cached_network_image.dart';
import 'package:pharmageddon_web/view/widgets/handle_state.dart';
import 'package:pharmageddon_web/view/widgets/svg_image.dart';
import 'package:pharmageddon_web/view/widgets/text_input.dart';

import '../../controllers/medication_details_cubit/medication_details_state.dart';
import '../widgets/row_text_span.dart';

class MedicationDetailsScreen extends StatelessWidget {
  const MedicationDetailsScreen({
    super.key,
    required this.medicationModel,
    required this.tag,
  });

  final MedicationModel medicationModel;
  final UniqueKey tag;

  @override
  Widget build(BuildContext context) {
    AppInjection.getIt<MedicationDetailsCubit>().initial(medicationModel);
    return BlocConsumer<MedicationDetailsCubit, MedicationDetailsState>(
      listener: (context, state) {
        if (state is MedicationDetailsFailureState) {
          handleState(state: state.state, context: context);
        }
      },
      builder: (context, state) {
        final cubit = MedicationDetailsCubit.get(context);
        return ListView(
          children: <Widget>[
            buildRowTop(cubit),
            image(cubit),
            const Gap(15),
            // TextInputField(
            //   validator: ValidateInput.isEmail,
            //   controller: cubit.scientificNameArCon,
            //   label: AppText.scientificNameAr.tr,
            //   enabled: cubit.enableEdit,
            // ),
            RowTextSpan(
              s1: '${AppText.id.tr} : # ',
              s2: cubit.model.id.toString(),
            ),
            RowTextSpan(
              s1: '${AppText.scientificName.tr} : ',
              s2: getMedicationScientificName(cubit.model),
            ),
            const Gap(5),
            RowTextSpan(
              s1: '${AppText.commercialName.tr} : ',
              s2: getMCommercialName(cubit.model),
            ),
            const Gap(5),
            RowTextSpan(
              s1: '${AppText.manufacturer.tr} : ',
              s2: getManufacturerName(cubit.model.manufacturer),
            ),
            const Gap(5),
            RowTextSpan(
              s1: '${AppText.effect.tr} : ',
              s2: getEffectCategoryModelName(
                  cubit.model.effectCategory),
            ),
            const Gap(5),
            RowTextSpan(
              s1: '${AppText.description.tr} : ',
              s2: getMedicationModelDescription(cubit.model).trn,
            ),
            const Gap(5),
            RowTextSpan(
              s1: '${AppText.availableQuantity.tr} : ',
              s2: cubit.model.availableQuantity.toString().trn,
            ),
            const Gap(5),
            RowTextSpan(
              s1: '${AppText.price.tr} : ',
              s2: '${cubit.model.price} ${AppText.sp.tr}'.trn,
            ),
            if (cubit.model.discount! > 0)
              RowTextSpan(
                s1: '${AppText.discount.tr} : ',
                s2: '${cubit.model.discount} %'.trn,
              ),
            if (cubit.model.discount! > 0)
              RowTextSpan(
                s1: '${AppText.priceAfterDiscount.tr} : ',
                s2: '${cubit.model.priceAfterDiscount} ${AppText.sp.tr}'
                    .trn,
              ),
            RowTextSpan(
              s1: '${AppText.expirationDate.tr} : ',
              s2: formatYYYYMd(cubit.model.expirationDate),
            ),
          ],
        );
      },
    );
  }

  Row image(MedicationDetailsCubit cubit) {
    return Row(
      children: [
        const Expanded(child: SizedBox()),
        Expanded(
          flex: 2,
          child: Hero(
            tag: tag,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: cubit.imageShow != null
                  ? Image.memory(
                      cubit.imageShow!,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 200,
                    )
                  : CustomCachedNetworkImage(
                      width: double.infinity,
                      height: 200,
                      imageUrl: getUrlImageMedication(cubit.model),
                      errorWidget: ErrorWidgetShow.picture,
                    ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
      ],
    );
  }

  Row buildRowTop(MedicationDetailsCubit cubit) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              AppInjection.getIt<HomeCubit>().closeMedicationModelDetails();
            },
            icon: const SvgImage(
              path: AppSvg.close,
              color: AppColor.contentColorBlue,
              size: 30,
            )),
        const Spacer(),
        IconButton(
            onPressed: cubit.onTapEdit,
            icon: const SvgImage(
              path: AppSvg.edit,
              color: AppColor.contentColorBlue,
              size: 30,
            )),
      ],
    );
  }
}
