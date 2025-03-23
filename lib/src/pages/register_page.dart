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
            image: AssetImage('assets/images/blue.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(26.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 20),
              Text('FLUXO LIVRE',
                style: TextStyle(color: Color.fromARGB(255, 217, 217, 4), fontSize: 30, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Text('Cadastro',
                style: TextStyle(color: Color(0xFFAFAE24), fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              InputWidget(icon: Icons.person, hint: 'Nome'),
              InputWidget(icon: Icons.email, hint: 'Email'),
              InputWidget(icon: Icons.description, hint: 'CPF'),
              InputWidget(
                icon: Icons.lock_outline,
                hint: 'Senha',
                obscure: true,
              ),
              InputWidget(icon: Icons.lock_outline, hint: 'Confirmar senha', obscure: true,),
              const SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFAE24),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/home');
                },
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 2, 14, 49),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Já tem conta?',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed('/'); // Corrigido para usar pushReplacementNamed
                    },
                    child: const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Color(0xFFAFAE24),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
