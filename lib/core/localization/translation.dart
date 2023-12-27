import 'package:get/get.dart';
import 'package:pharmageddon_web/core/constant/app_keys_request.dart';

import '../constant/app_text.dart';

class MyTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          AppText.language: 'Language',
          AppText.arabic: 'عربي',
          AppText.english: 'English',
          AppText.login: 'Login',
          AppText.createAccount: 'Create account',
          AppText.letGetStarted: 'Let\'s get started ...',
          AppText.email: 'Email',
          AppText.emailOrPhone: 'Email or Phone',
          AppText.emailOrPhoneNotValid: 'Email or Phone not valid',
          AppText.userName: 'User Name',
          AppText.phoneNumber: 'Phone Number',
          AppText.address: 'Address',
          AppText.password: 'Password',
          AppText.register: 'Register',
          AppText.edit: 'Edit',
          AppText.haveAnAccount: 'Have an account ?',
          AppText.loginNow: 'Login now',
          AppText.or: 'OR',
          AppText.thisFieldCantBeEmpty: 'This field can\'t be empty',
          AppText.lengthMustBeBetween: 'Length must be between',
          AppText.notValid: 'Not valid',
          AppText.emailMustBeEndWith: 'Email must be end with',
          AppText.phone: 'Phone',
          AppText.thePhoneNumberMustStartWith:
              'The phone number must start with 09 and have a total of 10 digits',
          AppText.passwordMustBeAtLeast8:
              'Password must be at least 8 characters and contain a mix of uppercase and lowercase letters, numbers, and special characters.',
          AppText.doNotHaveAnAccount: 'Don\'t have an account ?',
          AppText.thereIsAlreadyAnAccountForTheWarehouseOwner:
              'There is already an account for the warehouse owner.',
          AppText.passwordNotCorrect: 'Password not correct',
          AppText.userNotFound: 'User not found',
          AppText.verifyCodeNotCorrect: 'Verify code not correct',
          AppText.verifyCodeNotSentTryAgain: 'Verify code not sent, Try again!',
          AppText.goToTheOtherPlatform: 'Go to the other platform',
          AppText.resendVerifyCode: 'Resend verify code',
          AppText.emailOrPasswordIsWrong: 'Email or password is wrong.',
          AppText.forgetPassword: 'Forget Password',
          AppText.check: 'Check',
          AppText.checkEmail: 'Check email',
          AppText.reset: 'Reset',
          AppText.resetPassword: 'Reset Password',
          AppText.confirm: 'Confirm',
          AppText.passwordsNoMatch: 'Passwords No Match',
          AppText.somethingWentWrong: 'Something went wrong',
          AppText.welcomeBack: 'Welcome Back',
          AppText.name: 'Name',
          AppText.youAreOffline: 'You are offline',
          AppText.field: 'Field',
          AppText.alreadyBeenTaken: 'already been taken.',
          AppText.enterTheVerificationCodeYouReceivedOnGmail:
              'Enter the verification code you received on Gmail',
          AppText.enterTheCompleteVerificationCode:
              'Enter the complete verification code.',
          AppText.verify: 'Verify',
          AppText.verifyCode: 'Verify Code',
          AppText.price: 'Price',
          AppText.totalPrice: 'Total Price',
          AppText.done: 'Done',
          AppText.manufacturer: 'Manufacturer',
          AppText.effectCategories: 'Effect categories',
          AppText.home: 'Home',
          AppText.profile: 'Profile',
          AppText.favorite: 'Favorite',
          AppText.logOut: 'Log Out',
          AppText.doYouWantToLogOut: 'Do you want to log out?',
          AppText.yes: 'Yes',
          AppText.no: 'No',
          AppText.pressBackAgainToExit: 'Press back again to exit',
          AppText.youHaveNoFoodsFavoriteYet: 'You have no foods favorite yet',
          AppText.resultsSearchFor: 'Results search for',
          AppText.openInFullScreen: 'Open in full screen',
          AppText.all: 'All',
          AppText.discounts: 'Discounts',
          AppText.quantityExpired: 'Quantity expired',
          AppText.dateExpired: 'Date expired',
          AppText.add: 'Add',
          AppText.reports: 'Reports',
          AppText.orders: 'Orders',
          AppText.hasBeenSent: 'Has been sent',
          AppText.received: 'Received',
          AppText.preparing: 'Preparing',
          AppText.paid: 'Paid',
          AppText.unPaid: 'Un paid',
          AppText.newW: 'new',
          AppText.searchResultsFor: 'Search results for',
          AppText.pleaseSelectStartAndEndOfDate:
              'Please select start and end of date',
          AppText.totalQuantity: 'Total quantity',
          AppText.totalOrders: 'Total orders',
          AppText.sp: 'S.P',
          AppText.send: 'Send',
          AppText.start: 'Start',
          AppText.end: 'End',
          AppText.paymentState: 'Payment state',
          AppText.date: 'Date',
          AppText.id: 'ID',
          AppText.pharmacist: 'Pharmacist',
          AppText.selectStartDateAndEndDateOfReport:
              'Select start date - end date of report',
          AppText.thisFieldMustBeArabic: 'This field must be Arabic',
          AppText.thisFieldMustBeEnglish: 'This field must be English',
          AppText.invalidNumberOrContainsDecimals:
              'Invalid number or contains decimals',
          AppText.invalidNumber: 'Invalid number',
          AppText.atLeast: 'At least',
          AppText.nameEn: 'Name english',
          AppRKeys.english_name: 'Name english',
          AppText.nameAr: 'Name arabic',
          AppRKeys.arabic_name: 'Name arabic',
          AppText.scientificNameEn: 'Scientific name english',
          AppRKeys.english_scientific_name: 'Scientific name english',
          AppText.scientificNameAr: 'Scientific name arabic',
          AppRKeys.arabic_scientific_name: 'Scientific name arabic',
          AppText.commercialNameEn: 'Commercial name english',
          AppRKeys.english_commercial_name: 'Commercial name english',
          AppText.commercialNameAr: 'Commercial name arabic',
          AppRKeys.arabic_commercial_name: 'Commercial name arabic',
          AppText.descAr: 'Description arabic',
          AppText.descEn: 'Description english',
          AppText.availableQuantity: 'Available quantity',
          AppText.expirationDate: 'Expiration date',
          AppText.effect: 'Effect',
          AppText.scientificName: 'Scientific name',
          AppText.commercialName: 'Commercial name',
          AppText.description: 'Description',
          AppText.priceAfterDiscount: 'Price after discount',
          AppText.discount: 'Discount',
          AppText.updatedSuccessfully: 'Updated successfully',
          AppText.deleteThisMedicine: 'Delete this medicine',
          AppText.activateThisMedicine: 'Activate this medicine',
          AppText.medicineNotFoundOrHasBeenDeleted:
              'Medicine not found or has been deleted',
          AppText.thisFieldMustContainEnglishLettersAndNumbers:
              'This field must contain English letters and numbers',
          AppText.thisFieldMustContainArabicLettersAndNumbers:
              'This field must contain Arabic letters and numbers',
          AppText.ok: 'Ok',
          AppText.confirmDeletion: 'Confirm deletion',
          AppText.cancel: 'Cancel',
          AppText.theExpirationDateFieldMustBeADateAfterToday:
              'The expiration date field must be a date after today',
          AppText.manufacturerNotFound: 'Manufacturer not found',
          AppText.effectCategoryNotFound: 'Effect category not found',
          AppText.addMedication: 'Add medication',
          AppText.addManufacturer: 'Add manufacturer',
          AppText.addEffectCategory: 'Add effect category',
          AppText.selectEffectCategoryManufacturer:
              'Select effect category & manufacturer',
          AppText.effectCategoryOrManufacturerNotFound:
              'Effect category or manufacturer not found',
          AppText.medicationAddedSuccessfully: 'Medication added successfully',
          AppText.manufacturerAddedSuccessfully:
              'Manufacturer added successfully',
          AppText.effectCategoryAddedSuccessfully:
              'Effect category added successfully',
          AppText.orderNotFound: 'Order not found',
          AppText.thisOrderHasCanceledBefore: 'This order has canceled before',
          AppText.orderHasBeenSentSoYouCannotCancelIt:
              'Order has been sent so you cannot cancel it',
          AppText.orderHasReceivedSoYouCannotCancelIt:
              'Order has received so you cannot cancel it',
          AppText.thisOrderHasAlreadyBeenCanceled:
              'This order has already been canceled',
          AppText.thisOrderHasAlreadyBeenReceived:
              'This order has already been received',
          AppText.orderHasBeenPaidBeforeSoYouCannotEditIt:
              'Order has been paid before, so you cannot edit it'
        },
        'ar': {
          AppText.orderHasBeenPaidBeforeSoYouCannotEditIt:
              'لقد تم دفع الطلب من قبل، لذا لا يمكنك تعديله',
          AppText.thisOrderHasAlreadyBeenReceived:
              'لقد تم استلام هذا الطلب من قبل',
          AppText.thisOrderHasAlreadyBeenCanceled:
              'لقد تم إلغاء هذا الطلب من قبل',
          AppText.orderHasBeenSentSoYouCannotCancelIt:
              'تم إرسال الطلب لذلك لا يمكنك إلغاءه',
          AppText.orderHasReceivedSoYouCannotCancelIt:
              'تم استلام الطلب لذلك لا يمكنك إلغاءه',
          AppText.thisOrderHasCanceledBefore: 'تم إلغاء هذا الطلب من قبل',
          AppText.orderNotFound: 'لم يتم العثور على الطلب',
          AppText.medicationAddedSuccessfully: 'تمت إضافة الدواء بنجاح',
          AppText.manufacturerAddedSuccessfully:
              'تمت إضافة الشركة المصنعة بنجاح',
          AppText.effectCategoryAddedSuccessfully:
              'تمت إضافة فئة التأثير بنجاح',
          AppText.effectCategoryOrManufacturerNotFound:
              'لم يتم العثور على فئة التأثير أو الشركة المصنعة',
          AppText.selectEffectCategoryManufacturer:
              'حدد فئة التأثير والشركة المصنعة',
          AppText.addMedication: 'أضف دواء',
          AppText.addManufacturer: 'إضافة شركة مصنعة',
          AppText.addEffectCategory: 'إضافة فئة تأثير',
          AppText.effectCategoryNotFound: 'لم يتم العثور على فئة التأثير',
          AppText.manufacturerNotFound: 'لم يتم العثور على الشركة المصنعة',
          AppText.theExpirationDateFieldMustBeADateAfterToday:
              'يجب أن يكون حقل تاريخ انتهاء الصلاحية تاريخًا بعد اليوم',
          AppText.cancel: 'الغاء',
          AppText.confirmDeletion: 'تأكيد الحذف',
          AppText.ok: 'موافق',
          AppText.deleteThisMedicine: 'حذف هذا الدواء',
          AppText.activateThisMedicine: 'تفعيل هذا الدواء',
          AppText.thisFieldMustContainEnglishLettersAndNumbers:
              'يجب أن يحتوي هذا الحقل على أحرف انجليزية وأرقام',
          AppText.thisFieldMustContainArabicLettersAndNumbers:
              'يجب أن يحتوي هذا الحقل على أحرف عربية وأرقام',
          AppText.medicineNotFoundOrHasBeenDeleted:
              'لم يتم العثور على الدواء أو تم حذفه',
          AppText.updatedSuccessfully: 'تم التعديل بنجاح',
          AppText.scientificName: 'الاسم العلمي',
          AppText.commercialName: 'الاسم التجاري',
          AppText.description: 'الوصف',
          AppText.effect: 'التأثير',
          AppText.priceAfterDiscount: 'السعر بعد الخصم',
          AppText.discount: 'خصم',
          AppText.nameEn: 'الاسم انجليزي',
          AppRKeys.english_name: 'الاسم انجليزي',
          AppText.nameAr: 'الاسم عربي',
          AppRKeys.arabic_name: 'الاسم عربي',
          AppText.scientificNameEn: 'الاسم العلمي انجليزي',
          AppRKeys.english_scientific_name: 'الاسم العلمي انجليزي',
          AppText.scientificNameAr: 'الاسم العلمي عربي',
          AppRKeys.arabic_scientific_name: 'الاسم العلمي عربي',
          AppText.commercialNameEn: 'الاسم التجاري انجليزي',
          AppRKeys.english_commercial_name: 'الاسم التجاري انجليزي',
          AppText.commercialNameAr: 'الاسم التجاري عربي',
          AppRKeys.arabic_commercial_name: 'الاسم التجاري عربي',
          AppText.descAr: 'الوصف عربي',
          AppText.descEn: 'الوصف انجليزي',
          AppText.availableQuantity: 'الكمية المتوفرة',
          AppText.expirationDate: 'تاريخ انتهاء الصلاحية',
          AppText.atLeast: 'على الأقل',
          AppText.invalidNumberOrContainsDecimals:
              'رقم غير صالح أو يحتوي على أرقام عشرية',
          AppText.invalidNumber: 'رقم غير صالح',
          AppText.thisFieldMustBeArabic: 'يجب أن يكون هذا الحقل باللغة العربية',
          AppText.thisFieldMustBeEnglish:
              'يجب أن يكون هذا الحقل باللغة الإنجليزية',
          AppText.selectStartDateAndEndDateOfReport:
              'حدد تاريخ البدء - تاريخ انتهاء التقرير',
          AppText.pharmacist: 'الصيدلاني',
          AppText.paymentState: 'حالة الدفع',
          AppText.date: 'التاريخ',
          AppText.id: 'الرقم',
          AppText.totalOrders: 'إجمالي الطلبات',
          AppText.start: 'بداية',
          AppText.end: 'نهاية',
          AppText.send: 'إرسال',
          AppText.sp: 'ل.س',
          AppText.totalQuantity: 'الكمية الإجمالية',
          AppText.totalPrice: 'السعر الاجمالي',
          AppText.pleaseSelectStartAndEndOfDate:
              'الرجاء تحديد بداية ونهاية التاريخ',
          AppText.searchResultsFor: 'نتائج البحث عن',
          AppText.newW: 'جديد',
          AppText.paid: 'مدفوع',
          AppText.unPaid: 'غير مدفوع',
          AppText.add: 'اضافة',
          AppText.reports: 'التقارير',
          AppText.orders: 'الطلبات',
          AppText.hasBeenSent: 'تم الارسال',
          AppText.received: 'تم الاستلام',
          AppText.preparing: 'قيد التحضير',
          AppText.quantityExpired: 'منتهي الكمية',
          AppText.dateExpired: 'منتهي الصلاحية',
          AppText.discounts: 'خصومات',
          AppText.manufacturer: 'الصانع',
          AppText.effectCategories: 'فئات التأثير',
          AppText.all: 'الكل',
          AppText.language: 'اللغة',
          AppText.arabic: 'عربي',
          AppText.english: 'English',
          AppText.login: 'تسجيل الدخول',
          AppText.createAccount: 'انشاء حساب',
          AppText.letGetStarted: 'دعنا نبدأ ...',
          AppText.email: 'البريد الإلكتروني',
          AppText.emailOrPhone: 'البريد الإلكتروني او رقم الهاتف',
          AppText.emailOrPhoneNotValid:
              'البريد الإلكتروني او رقم الهاتف غير صالح',
          AppText.userName: 'اسم المستخدم',
          AppText.phoneNumber: 'رقم الهاتف',
          AppText.address: 'العنوان',
          AppText.password: 'كلمة المرور',
          AppText.register: 'سجل',
          AppText.edit: 'تعديل',
          AppText.haveAnAccount: 'لديك حساب ؟',
          AppText.loginNow: 'سجل الآن',
          AppText.or: 'او',
          AppText.thisFieldCantBeEmpty: 'هذا الحقل لا يمكن ان يكون فارغا',
          AppText.lengthMustBeBetween: 'يجب أن يكون الطول بين',
          AppText.notValid: 'غير صالح',
          AppText.emailMustBeEndWith: 'يجب أن ينتهي البريد الإلكتروني بـ',
          AppText.phone: 'رقم الهاتف',
          AppText.thePhoneNumberMustStartWith:
              'يجب أن يبدأ رقم الهاتف بالرقم 09 وأن يتكون من 10 أرقام',
          AppText.passwordMustBeAtLeast8:
              'يجب أن تتكون كلمة المرور من 8 أحرف على الأقل وأن تحتوي على مزيج من الأحرف الكبيرة والصغيرة والأرقام والأحرف الخاصة.',
          AppText.thereIsAlreadyAnAccountForTheWarehouseOwner:
              'يوجد بالفعل حساب لصاحب المستودع.',
          AppText.passwordNotCorrect: 'كلمة المرور غير صحيحة',
          AppText.userNotFound: 'لم يتم العثور على المستخدم',
          AppText.verifyCodeNotCorrect: 'رمز التحقق غير صحيح',
          AppText.verifyCodeNotSentTryAgain:
              'لم يتم إرسال رمز التحقق، حاول مرة أخرى!',
          AppText.goToTheOtherPlatform: 'انتقل إلى المنصة الأخرى',
          AppText.check: 'تحقق',
          AppText.checkEmail: 'فحص البريد الإلكتروني',
          AppText.reset: 'إعادة ضبط',
          AppText.verify: 'تحقق',
          AppText.verifyCode: 'التحقق من الكود',
          AppText.resetPassword: 'إعادة تعيين كلمة المرور',
          AppText.confirm: 'تأكيد',
          AppText.passwordsNoMatch: 'كلمات المرور غير متطابقة',
          AppText.somethingWentWrong: 'هناك خطأ ما',
          AppText.name: 'الاسم',
          AppText.welcomeBack: 'اهلا بعودتك',
          AppText.forgetPassword: 'نسيت كلمة المرور',
          AppText.resendVerifyCode: 'إعادة إرسال رمز التحقق',
          AppText.emailOrPasswordIsWrong:
              'البريد الإلكتروني أو كلمة المرور خاطئة.',
          AppText.doNotHaveAnAccount: 'ليس لديك حساب ؟',
          AppText.field: 'حقل',
          AppText.alreadyBeenTaken: 'بالفعل تم اخذها.',
          AppText.enterTheVerificationCodeYouReceivedOnGmail:
              'أدخل رمز التحقق الذي تلقيته على Gmail',
          AppText.enterTheCompleteVerificationCode: 'ادخل كامل رمز التحقق.',
          AppText.price: 'السعر',
          AppText.done: 'تم',
          AppText.home: 'الرئيسية',
          AppText.profile: 'الملف الشخصي',
          AppText.favorite: 'المفضلة',
          AppText.logOut: 'تسجيل الخروج',
          AppText.doYouWantToLogOut: 'هل تريد تسجيل خروج ؟',
          AppText.yes: 'نعم',
          AppText.no: 'لا',
          AppText.pressBackAgainToExit: 'اضغط مرة أخرى للخروج',
          AppText.youHaveNoFoodsFavoriteYet: 'ليس لديك أي أطعمة مفضلة حتى الآن',
          AppText.resultsSearchFor: 'نتائج البحث عن',
          AppText.openInFullScreen: 'فتح في وضع ملء الشاشة',
        },
      };
}
