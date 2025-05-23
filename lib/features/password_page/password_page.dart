import 'package:flutter/material.dart';

import '../../../components/custom_button_widget.dart';
import '../../../components/custom_top_appbar_widget.dart';
import '../../../constant/color_manger.dart';
import '../../../constant/text_manger.dart';
import '../success_notification_page/success_notification_page.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  bool isSelected = false;
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const CustomTopAppBarBackNavigator(
                titel: 'Reset your password \nhere',
                supTitel:
                    'Select which contact details should we \nuse to reset your password'),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: TextField(
                obscureText: isSelected ? false : true,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Icon(
                      isSelected ? Icons.visibility : Icons.visibility_off,
                      color: isSelected
                          ? ColorManger.kPrimaryColor
                          : const Color.fromARGB(255, 201, 195, 195),
                    ),
                  ),
                  hintText: 'New Password',
                  hintStyle: TextManger.textstyle14Regular,
                  filled: true,
                  fillColor: theme.primaryColor,
                  enabledBorder: outlineInputBorder(theme.primaryColor),
                  focusedBorder: outlineInputBorder(theme.primaryColor),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: TextField(
                obscureText: isPassword ? false : true,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          isPassword = !isPassword;
                        },
                      );
                    },
                    child: Icon(
                      isPassword ? Icons.visibility : Icons.visibility_off,
                      color: isPassword
                          ? ColorManger.kPrimaryColor
                          : const Color.fromARGB(255, 201, 195, 195),
                    ),
                  ),
                  hintText: 'Confirm Password',
                  hintStyle: TextManger.textstyle14Regular,
                  filled: true,
                  fillColor: theme.primaryColor,
                  enabledBorder: outlineInputBorder(theme.primaryColor),
                  focusedBorder: outlineInputBorder(theme.primaryColor),
                ),
              ),
            ),
            const SizedBox(
              height: 290,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SuccessNotificationPage(),
                ),
              ),
              child: const UnconstrainedBox(
                child: CustomButtonWidget(
                  textButton: 'Next',
                  horizontal: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder(Color theme) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(22),
    borderSide: BorderSide(
      color: theme,
    ),
  );
}
