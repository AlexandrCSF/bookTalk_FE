import 'package:auto_route/auto_route.dart';
import 'package:booktalk_frontend/pages/onboarding/widgets/welcome_page.dart';
import 'package:booktalk_frontend/utils/navigation/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class WelcomeViewPage extends StatefulWidget {
  const WelcomeViewPage({super.key});

  @override
  State<WelcomeViewPage> createState() => _WelcomeViewPageState();
}

class _WelcomeViewPageState extends State<WelcomeViewPage> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        children: [
          WelcomePage(
            onTap: () {
              _controller.animateToPage(1,
                  duration: const Duration(milliseconds: 500), curve: Curves.ease);
            },
            imagePath: 'lib/utils/resources/images/welcome_picture1.png',
            title: 'Читай',
            description: 'Находи интересные идеи для чтения в любимых жанрах',
            buttonLabel: 'Дальше',
          ),
          WelcomePage(
            onTap: () {
              _controller.animateToPage(2,
                  duration: const Duration(milliseconds: 500), curve: Curves.ease);
            },
            imagePath: 'lib/utils/resources/images/welcome_picture2.png',
            title: 'Общайся',
            description:
                'Встречайся с единомышленниками и участвуй в обсуждениях',
            buttonLabel: 'Дальше',
          ),
          WelcomePage(
            onTap: () {
              context.navigateTo(const HomeRoute());
            },
            imagePath: 'lib/utils/resources/images/welcome_picture3.png',
            title: 'Развивайся',
            description: 'Стань частью большого сообщества или создай своё',
            buttonLabel: 'Начать',
          ),
        ],
      ),
    );
  }
}
