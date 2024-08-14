import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../base/app_constants.dart';
import '../commonwidgets/empty_widget.dart';
import '../router/app_router.dart';


@RoutePage()
class IntroScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kWhiteColor,
      body: IntroductionScreen(
          pages: [
            PageViewModel(
              titleWidget: EmptyWidget(),
              bodyWidget: EmptyWidget(),
              image: buildImage("assets/images/intro_1.gif"),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              titleWidget: EmptyWidget(),
              bodyWidget: EmptyWidget(),
              image: buildImage("assets/images/intro_one.png"),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              titleWidget: EmptyWidget(),
              bodyWidget: EmptyWidget(),
              image: buildImage("assets/images/intro_two.png"),
              //getPageDecoration, a method to customise the page style
              decoration: getPageDecoration(),
            ),
          ],
          onDone: () async{
            final SharedPreferences autoRememberer = await SharedPreferences.getInstance();
            await autoRememberer.setBool('hasUserSeenIntro', true);
            await context.router.replace(const HomeRoute());
          },
          //ClampingScrollPhysics prevent the scroll offset from exceeding the bounds of the content.
          scrollPhysics: const ClampingScrollPhysics(),
          showDoneButton: true,
          showNextButton: true,
          showSkipButton: true,
          skip: const Text(
              "Skip",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              )
          ),
          next: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
          done: const Text(
              "Done",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 18
              )
          ),
          onSkip: () async{
            final SharedPreferences autoRememberer = await SharedPreferences.getInstance();
            await autoRememberer.setBool('hasUserSeenIntro', true);
            await context.router.replace(const HomeRoute());
          },
          dotsDecorator: getDotsDecorator()
      ),
    );
  }

  //widget to add the image on screen
  Widget buildImage(String imagePath) {
    return Center(
        child: Image.asset(
          imagePath,
        )
    );
  }


  //method to customise the page style
  PageDecoration getPageDecoration() {
    return const PageDecoration(
        imagePadding: EdgeInsets.only(top: 120),
        pageColor: ColorConstants.klogoOrangeColor,
        bodyTextStyle: TextStyle(color: Colors.black54, fontSize: 15),
        fullScreen: true
    );
  }

  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Colors.orange,
      color: Colors.black,
      activeSize: Size(12, 5),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}