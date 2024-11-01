import 'package:sehety_app/core/constatnts/assets_image.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subtitle;

  OnBoardingModel(
      {required this.title, required this.subtitle, required this.image});
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    image: AssetsImage.onBoard1,
    title: 'ابحث عن دكتور متخصص',
    subtitle: 'ابحث عن دكتور متخصص في مجالك',
  ),
  OnBoardingModel(
    image: AssetsImage.onBoard2,
    title: 'سهولة الحجز',
    subtitle: 'احجز المواعيد بضغطة زرار في أي وقت وفي أي مكان .',
  ),
  OnBoardingModel(
    image: AssetsImage.onBoard3,
    title: '  أمن وسري',
    subtitle:'كن مطمئنًا لأن خصوصيتك وأمانك هما أهم أولوياتنا.',
  ),
];
