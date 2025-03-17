import 'package:data_aktarimi/TextFormField/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../models/user_models.dart';
import '../welcome/welcome.dart';

class LogInPage extends StatelessWidget {
  LogInPage({super.key, required this.userModel});

  final UserData userModel;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Giriş Ekranı",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
              hintYazisi: "Email Giriniz",
              textController: emailController,
            ),
            CustomTextFormField(
              hintYazisi: "Şifrenizi Giriniz",
              textController: passwordController,
              validator: (deger) {
                if (deger != null) {
                  if (deger.length < 5) {
                    return "Şifre 5 haneden az olamaz";
                  }
                }
                return null;
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    if (userModel.email == emailController.text &&
                        userModel.sifre == passwordController.text) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  WelcomePage(userModel: userModel)));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) => const AlertDialog(
                                content: Text("girdiğiniz bilgiler hatalıdır"),
                              ));
                    }
                  }
                },
                child: Text("Giriş Yap"))
          ],
        ),
      ),
    );
  }
}
