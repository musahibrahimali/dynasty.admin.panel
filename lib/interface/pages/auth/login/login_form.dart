import 'package:dynasty_urban_style/index.dart';
import 'package:flutter/material.dart';

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

  // dispose method
  @override
  void dispose() {
    // dispose controllers
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // width and height of the screen
    double _width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: _width * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15.0),
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
                  CustomFormField(
                    emailController: _emailController,
                    label: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: BrandColors.kColorDarkGreen,
                      size: 26.0,
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  // add a text field for password
                  CustomFormField(
                    emailController: _passwordController,
                    label: "Password",
                    isObscured: !_passwordVisible,
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: BrandColors.kColorDarkGreen,
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
                    onSubmit: (value) async {
                      // validate form
                      if (_formKey.currentState!.validate()) {
                        // get the email and password
                        String email = _emailController.text;
                        String password = _passwordController.text;

                        // call the login method
                        await _logInAdmin(email, password);
                      }
                    },
                  ),
                  const SizedBox(height: 22.0),
                  // add a button for login
                  Custombutton(
                    text: "Log In",
                    color: BrandColors.kColorDarkGreen,
                    onPressed: () async {
                      // check if the form is valid
                      if (_formKey.currentState!.validate()) {
                        // get the email and password
                        String email = _emailController.text;
                        String password = _passwordController.text;

                        // call the login method
                        await _logInAdmin(email, password);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // log in user
  _logInAdmin(email, password) async {
    // Map<String, dynamic> userDetails = {
    //   'email': email,
    //   'password': password,
    // };
    // dynamic _admin = await loginAdmin(userDetails);
    // if (_admin != null) {
    //   // navigate to home page
    //   Navigator.pushNamed(context, homeRoute);
    // }
    Navigator.pushNamed(context, homeRoute);
  }
}
