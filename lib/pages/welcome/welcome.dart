import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_events.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_states.dart';
import 'package:ulearning_app/pages/welcome/components/page_welcome.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
          return SafeArea(
              child: Stack(children: [
            PageView(
                controller: pageController,
                onPageChanged: (index) {
                  state.page = index;
                  context.read<WelcomeBloc>().add(WelcomeEvent());
                },
                children: [
                  PageWelcome(
                      index: 0,
                      buttonName: "Próximo",
                      title: "Primeiro Veja a Aprendizagem",
                      subTitle:
                          "Esqueça uma folha de papel todo o conhecimento em um aprendizado!",
                      imagePath: "assets/images/boy.png",
                      pageController: pageController),
                  PageWelcome(
                      index: 1,
                      buttonName: "Próximo",
                      title: "Conecte-se com Todos",
                      subTitle:
                          "Sempre mantenha contato com seu tutor e amigo. Vamos nos conectar!",
                      imagePath: "assets/images/man.png",
                      pageController: pageController),
                  PageWelcome(
                      index: 2,
                      buttonName: "Começar",
                      title: "Aprendendo Sempre Fascinado",
                      subTitle:
                          "Em qualquer lugar, a qualquer hora. O tempo fica a seu critério então estude quando quiser.",
                      imagePath: "assets/images/reading.png",
                      pageController: pageController)
                ]),
            Positioned(
                bottom: 50.h,
                left: 0,
                right: 0,
                child: DotsIndicator(
                    dotsCount: 3,
                    position: state.page,
                    decorator: DotsDecorator(
                        size: const Size.square(8.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)))))
          ]));
        }));
  }
}
