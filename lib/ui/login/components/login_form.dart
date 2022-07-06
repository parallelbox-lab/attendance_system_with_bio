import 'package:attendance_with_bio/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  _LoginFormtate createState() => _LoginFormtate();
}

class _LoginFormtate extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _email = false;
  bool _password = false;
  bool? _submitted = false;
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthService _authService = AuthService();
  
  Future _submit() async {
    try {
      _authService.loginWithEmailAndPwd(_emailController.text.trim(),_passwordController.text.trim(),context);
    }catch(e){
     rethrow;
    }
    setState(()=> _isLoading = false);
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[               
                const SizedBox(height: 10),
                const Center(
                  child: Text(
                    'Login to Continue',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: _submitted!
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  controller: _emailController,
                  onChanged: (value) {
                    value = _emailController.text;
                    setState(
                      () {
                        if (value.isNotEmpty) {
                          _email = true;
                        } else {
                          _email = false;
                        }
                      },
                    );
                  },
                  onSaved: (value) {
                    value = _emailController.text;
                    // _authData['email'] = value;
                  },
                  validator: (value) {
                    String? errorMessage;
                    if (value!.isEmpty) {
                      errorMessage = "\u26A0 Email is required";
                    }
                    return errorMessage;
                  },
                  decoration: const InputDecoration(
                    labelText: "Email Address",
                    labelStyle: TextStyle(
                      fontFamily: 'Core Pro',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8E8CA1),
                    ),
                    errorStyle: TextStyle(
                      fontFamily: 'Core Pro',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                  ),
                ),
                 const SizedBox(height: 25,),
                 TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  autovalidateMode: _submitted!
                      ? AutovalidateMode.onUserInteraction
                      : AutovalidateMode.disabled,
                  controller: _passwordController,
                  onChanged: (value) {
                    value = _passwordController.text;
                    setState(
                      () {
                        if (value.isNotEmpty) {
                          _password = true;
                        } else {
                          _password = false;
                        }
                      },
                    );
                  },
                  onSaved: (value) {
                    value = _passwordController.text;
                    // _authData['email'] = value;
                  },
                  validator: (value) {
                    String? errorMessage;
                    if (value!.isEmpty) {
                      errorMessage = "\u26A0 Password is required";
                    }
                    return errorMessage;
                  },
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontFamily: 'Core Pro',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff8E8CA1),
                    ),
                    errorStyle: TextStyle(
                      fontFamily: 'Core Pro',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                    floatingLabelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    fillColor: Colors.black,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      primary: Colors.white,
                      backgroundColor:_email || _password == false
                          ? Colors.amber.withOpacity(0.5)
                          : Colors.amber,
                    ),
                    onPressed: _email || _password == false
                        ? null
                        : () {
                            setState(() => _submitted = true);
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              setState(() => _isLoading = true);
                              _submit();
                            }
                          },
                    child:_isLoading? const CircularProgressIndicator(color: Colors.white,) :  Text("Create Account to continue",
                        style: TextStyle(
                            fontFamily: 'Core Pro',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                )
              ]),
        ));
  }
}
