import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant/color_manger.dart';
import '../../../../../constant/text_manger.dart';
import 'notifiaction_screen.dart';
import 'search_screen.dart';

class HomeTabAppBar extends StatelessWidget {
  const HomeTabAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your \nFavorite Food',
                    style: TextManger.textstyle25Bold
                        .copyWith(color: theme.hintColor),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotifiactionScreen(),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: UnconstrainedBox(
                        child: SvgPicture.asset(
                            'assets/svg/Icon_Notifiaction.svg'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SearchScreen(),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 20),
                        decoration: BoxDecoration(
                          color: theme.focusColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/Icon_Search.svg',
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Opacity(
                                opacity: .40,
                                child: Text(
                                  'What do you want to order?',
                                  style: TextManger.textStyle12Medium.copyWith(
                                    color: ColorManger.kOrangeColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: theme.focusColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: UnconstrainedBox(
                          child: SvgPicture.asset('assets/svg/Filter.svg')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
