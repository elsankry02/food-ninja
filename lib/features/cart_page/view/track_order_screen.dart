import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninga/constant/image_manger.dart';

import '../../../../components/custom_contanier_pop_widget.dart';
import '../../../../constant/color_manger.dart';
import '../../../../constant/text_manger.dart';

class TrackOrderScreen extends StatefulWidget {
  const TrackOrderScreen({super.key});

  @override
  State<TrackOrderScreen> createState() => _TrackOrderScreenState();
}

class _TrackOrderScreenState extends State<TrackOrderScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      width: double.infinity,
                      'assets/images/Maps.png',
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomContainerPopupWidget(
                            theme: theme,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 165,
                      left: 210,
                      child: SvgPicture.asset('assets/svg/Track.svg'),
                    ),
                    Positioned(
                      top: 200,
                      left: 200,
                      child: SvgPicture.asset('assets/svg/Line.svg'),
                    ),
                    Positioned(
                      top: 165,
                      left: 240,
                      child: UnconstrainedBox(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: theme.primaryColor,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/svg/Icon_clock.svg'),
                              const SizedBox(
                                width: 8,
                              ),
                              Text(
                                '25 min',
                                style: TextManger.textstyle14Regular
                                    .copyWith(color: theme.hintColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 560,
              left: 25,
              right: 25,
              child: Container(
                width: double.infinity,
                height: 237,
                decoration: BoxDecoration(
                  color: theme.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Pattern_Search.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    const Column(
                      children: [],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 10, right: 10),
                            child: Text(
                              'Track Orders',
                              style: TextManger.textstyle17Bold
                                  .copyWith(color: theme.hintColor),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            height: 87,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              color: theme.primaryColor,
                            ),
                            child: Row(
                              children: [
                                Image.asset(ImageManger.kOmar),
                                const SizedBox(width: 20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mr Kemplas',
                                      style: TextManger.textstyle15Medium
                                          .copyWith(color: theme.hintColor),
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svg/Icon_maps.svg'),
                                        const SizedBox(width: 10),
                                        const Text(
                                          '25 minutes on the way',
                                          style: TextManger.textstyle14Regular,
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelected = !isSelected;
                                  });
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 250,
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
                                    color: isSelected
                                        ? ColorManger.kMaterialWhiteColor
                                        : ColorManger.kPrimaryColor,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: isSelected
                                            ? ColorManger.kPrimaryColor
                                            : ColorManger.kMaterialWhiteColor,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        'Call',
                                        style:
                                            TextManger.textstyle14Bold.copyWith(
                                          color: isSelected
                                              ? ColorManger.kPrimaryColor
                                              : ColorManger.kMaterialWhiteColor,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                  color: theme.primaryColor,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                  child: Container(
                                    width: 20,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: ColorManger.kPrimaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                          'assets/svg/Path_down.svg'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
