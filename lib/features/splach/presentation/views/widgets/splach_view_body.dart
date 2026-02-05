import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets_path.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splach/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplachViewBody extends StatefulWidget {
  const SplachViewBody({super.key});

  @override
  State<SplachViewBody> createState() => _SplachViewBodyState();
}

class _SplachViewBodyState extends State<SplachViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingtext;
  @override
  void initState() {
    super.initState();
    initslidinganmation();
    navigatetohome();
  }

 

  
  @override
  void dispose() {
  animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Image.asset(AssetsPath.logopath),
          SlidingText(slidingtext: slidingtext),
        ],
      ),
    );
  }



  void initslidinganmation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingtext = Tween<Offset>(
      begin: Offset(0, 4),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }

   void navigatetohome() {
     Future.delayed(Duration(seconds: 1), () {
      Get.to(() => HomeView(), duration: kTransetionDuration,
      transition: Transition.fadeIn
      
      );
    });
  }
}

