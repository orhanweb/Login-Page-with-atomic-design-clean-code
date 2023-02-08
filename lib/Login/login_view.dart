import 'package:feeling_state_management_ways_provider/Core/Constants/padding_const.dart';
import 'package:feeling_state_management_ways_provider/Core/Constants/text_conts.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:lottie/lottie.dart';

import '../Product/Witgets/c_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //Text Editing Controllers
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  bool _isLoad = false;

  void _changeLoad() {
    setState(() {
      _isLoad = !_isLoad;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            padding: CPadding.paddingAllMedium,
            child: Column(
              children: [
                animatedLottie(context),
                titleWidget(PCText.loginTitleText, context),
                CTextField(
                    controller: _controller1,
                    hintText: PCText.hintTextUserName),
                CTextField(
                  controller: _controller2,
                  hintText: PCText.hintTextPassword,
                  obsecure: true,
                ),
                loginButton(context)
              ],
            ),
          ),
        ));
  }

  Widget loginButton(BuildContext context) {
    return ElevatedButton(
        onPressed: _isLoad
            ? null
            : () async {
                _changeLoad();
                await Future.delayed(context.durationSlow);
                _controller1.clear();
                _controller2.clear();
                // ignore: use_build_context_synchronously
                FocusScope.of(context).unfocus();
                _changeLoad();
              },
        child: _isLoad
            ? const CircularProgressIndicator.adaptive()
            : const Text(PCText.loginButtonText));
  }

  Widget animatedLottie(BuildContext context) {
    return AnimatedContainer(
      duration: context.durationLow,
      height: context.isKeyBoardOpen
          ? context.dynamicHeight(0.15)
          : context.dynamicHeight(0.3),
      child: LottieBuilder.asset("assets/lottie_items/lottie_login.json"),
    );
  }

  Widget titleWidget(String title, BuildContext context) {
    return Padding(
      padding: CPadding.paddingBottomMedium,
      child: Text(
        title,
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}
