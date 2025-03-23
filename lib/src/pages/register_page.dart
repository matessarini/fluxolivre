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
            mainAxisAlignment: MainAxisAlignment.start, // Alinha os widgets no topo
            children: [
              const SizedBox(
                height: 150,
                width: 150,
                child: Image(image: AssetImage('assets/images/et.png')),
              ),
              const SizedBox(height: 30),
              Text('Cadastro', 
              style: TextStyle(color: Color(0xFFAFAE24), fontSize: 24, fontWeight: FontWeight.w500)),
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
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFAFAE24),
                  minimumSize: Size(double.infinity, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                child: const Text(
                  'Acessar',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF031C5F),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
