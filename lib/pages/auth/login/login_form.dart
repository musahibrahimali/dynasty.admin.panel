import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // define a form key
  final _formKey = GlobalKey<FormState>();

  // define controllers for password and email address
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // password visibility
  bool _passwordVisible = false;

  // init method
  @override
  void initState() {
    // initialize controllers
    _emailController.text = '';
    _passwordController.text = '';
    _passwordVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15.0),
          const BrandLogo(
            logoSize: 100.0,
          ),
          const SizedBox(height: 10.0),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 10.0,
            ),
            decoration: const BoxDecoration(),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  // add a text field for email address
                  TextFormField(
                    autofocus: true,
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    cursorColor: BrandColors.kDarkGray,
                    cursorWidth: 1.0,
                    keyboardAppearance: Brightness.light,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: GoogleFonts.lato(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: BrandColors.kColorDarkBlue,
                        size: 26.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: BrandColors.kDarkGray,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: BrandColors.kColorDarkBlue,
                          width: 1.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Invalid Email Address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 18.0),
                  // add a text field for password
                  TextFormField(
                    controller: _passwordController,
                    autofocus: false,
                    obscureText: !_passwordVisible,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.text,
                    cursorColor: BrandColors.kDarkGray,
                    cursorWidth: 1.0,
                    keyboardAppearance: Brightness.light,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: GoogleFonts.lato(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                      prefixIcon: Icon(
                        Icons.lock_open_outlined,
                        color: BrandColors.kColorDarkBlue,
                        size: 26.0,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        child: Icon(
                          _passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                          color: BrandColors.kLightBlueSky,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: BrandColors.kDarkGray,
                          width: 1.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide(
                          color: BrandColors.kColorDarkBlue,
                          width: 1.0,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Invalid Password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 22.0),
                  // add a button for logging in
                  Custombutton(
                    text: "Log In",
                    color: BrandColors.kColorDarkGreen,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
