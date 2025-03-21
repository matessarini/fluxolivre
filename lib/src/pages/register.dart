import 'package:app_fluxolivrep/src/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/img_fundo.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
                width: 200,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 30),
              InputWidget(icon: Icons.person, hint: 'Nome'),
              InputWidget(icon: Icons.email, hint: 'Email'),
              InputWidget(icon: Icons.description, hint: 'CPF'),
              InputWidget(
                icon: Icons.lock_outline,
                hint: 'Senha',
                obscure: true,
              ),
              InputWidget(icon: Icons.lock_outline, hint: 'Confirmar senha'),
            ],
          ),
        ),
      ),
    );
  }
}
