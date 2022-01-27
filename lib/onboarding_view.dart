import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:test_app/main.dart';

class OnboardingViewData {
  const OnboardingViewData({
    required this.title,
    required this.description,
    required this.assetName,
  });

  final String title;
  final String description;
  final String assetName;
}

const onboardingViewData = [
  OnboardingViewData(
    assetName: 'assets/img/img1.png',
    title: 'Plant-Forward Dining Delivered.',
    description: 'It is an exciting time for non-meat eaters',
  ),
  OnboardingViewData(
    assetName: 'assets/img/img2.png',
    title: 'Let us help you choose dinner tonight.',
    description: 'Try something new once a week',
  ),
  OnboardingViewData(
    assetName: 'assets/img/img3.png',
    title: 'We Curate. We Deliver. You Enjoy.',
    description: 'That\'s our story and we\'re sticking to it. Enjoy your meal',
  ),
];

class OnboardingView extends HookConsumerWidget {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = usePageController();
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingViewData.length + 1,
      itemBuilder: (context, index) {
        if (index == onboardingViewData.length) {
          return const LoginView();
        }

        final viewData = onboardingViewData[index];
        final isFinal = index == onboardingViewData.length - 1;
        final skipAction = () => pageController.animateToPage(
              onboardingViewData.length,
              duration: Duration(milliseconds: 200),
              curve: Curves.easeIn,
            );

        return Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Stack(
                children: [
                  Positioned.fill(
                      child: Image.asset(
                    viewData.assetName,
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    top: 48,
                    right: 48,
                    child: TextButton(
                        onPressed: skipAction, child: const Text('Skip')),
                  ),
                ],
              ),
            ),
            Text(viewData.title),
            Text(viewData.description),
            PageIndicatorWidget(
              length: onboardingViewData.length,
              index: index,
            ),
            OutlinedButton(
              onPressed: () => isFinal
                  ? skipAction()
                  : pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn,
                    ),
              child: Text(isFinal ? 'Get Started' : 'Next'),
            ),
          ],
        );
      },
    );
  }
}

class LoginView extends HookConsumerWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Natural Dining in NYC.'),
          const Text('Delivered to Your Door'),
          OutlinedButton(
            onPressed: () => ref.read(authProvider.notifier).signIn(),
            child: const Text('Sign in'),
          )
        ],
      ),
    );
  }
}

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    required this.length,
    required this.index,
    Key? key,
  }) : super(key: key);

  final int length;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        length,
        (i) => Container(
          height: 8,
          width: 8,
          margin: const EdgeInsets.only(right: 8),
          decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
