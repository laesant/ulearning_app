import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/pages/welcome/components/page_welcome.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              children: const [
                PageWelcome(
                  index: 1,
                  buttonName: "Próximo",
                  title: "Primeiro Veja a Aprendizagem",
                  subTitle:
                      "Esqueça uma folha de papel todo o conhecimento em um aprendizado!",
                  imagePath: "assets/images/boy.png",
                ),
                PageWelcome(
                  index: 2,
                  buttonName: "Próximo",
                  title: "Conecte-se com Todos",
                  subTitle:
                      "Sempre mantenha contato com seu tutor e amigo. Vamos nos conectar!",
                  imagePath: "assets/images/man.png",
                ),
                PageWelcome(
                  index: 3,
                  buttonName: "Próximo",
                  title: "Aprendendo Sempre Fascinado",
                  subTitle:
                      "Em qualquer lugar, a qualquer hora. O tempo fica a seu critério então estude quando quiser.",
                  imagePath: "assets/images/reading.png",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
