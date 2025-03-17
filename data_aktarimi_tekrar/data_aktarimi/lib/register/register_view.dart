import 'package:data_aktarimi/logIn/log_in_page.dart';
import 'package:data_aktarimi/models/user_models.dart';
import 'package:flutter/material.dart';
import '../TextFormField/custom_text_form_field.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController surNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Merhaba", style: TextStyle(color: Colors.white)),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
              hintYazisi: "Ad",
              textController: userNameController,
              validator: (value) {
                if (value != null) {
                  if (value.isEmpty) {
                    return "ad boş bırakılamaz";
                  }
                }
                return null;
              },
            ),
            CustomTextFormField(
              hintYazisi: "Soyad",
              textController: surNameController,
              validator: (deger) {
                if (deger != null) {
                  if (deger.isEmpty) {
                    return "soyad boş bırakılamaz";
                  }
                }
                return null;
              },
            ),
            CustomTextFormField(
              hintYazisi: "Şifre",
              textController: passwordController,
              validator: (value) {
                if (value != null) {
                  if (value.length < 5) {
                    return "şifre 5 haneden az olamaz";
                  }
                }
                return null;
              },
            ),
            CustomTextFormField(
              hintYazisi: "E-mail",
              textController: emailController,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LogInPage(
                                  userModel: UserData(
                                      ad: userNameController.text,
                                      soyad: surNameController.text,
                                      sifre: passwordController.text,
                                      email: emailController.text),
                                )));
                  }
                },
                child: Text("Kayıt Ol"))
          ],
        ),
      ),
    );
  }
}
