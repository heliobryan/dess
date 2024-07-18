import 'package:dess/App/Source/Core/components.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AvaliationPage extends StatefulWidget {
  const AvaliationPage({super.key});

  @override
  State<AvaliationPage> createState() => _AvaliationPageState();
}

class _AvaliationPageState extends State<AvaliationPage> {
  final _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              signOut();
            },
          ),
        ],
        centerTitle: true,
        title: const Text(
          'Avaliações',
          style: TextStyle(
            fontFamily: 'STRETCH',
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          const GradientBack(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 295,
                  child: OutlineGradientButton(
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    radius: const Radius.circular(12),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.sports_soccer,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 60),
                        Text(
                          'Técnica',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.pushNamed(context, 'avatecPage'),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 295,
                  child: OutlineGradientButton(
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    radius: const Radius.circular(12),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ImageIcon(
                          AssetImage(
                            'assets/images/neurology.png',
                          ),
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 45),
                        Text(
                          'Psicológica',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.pushNamed(context, 'avapsiPage'),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 295,
                  child: OutlineGradientButton(
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    radius: const Radius.circular(12),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ImageIcon(
                          AssetImage('assets/images/exercise.png'),
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 80),
                        Text(
                          'Física',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.pushNamed(context, 'avafisPage'),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: 295,
                  child: OutlineGradientButton(
                    strokeWidth: 1,
                    gradient: const LinearGradient(
                      colors: <Color>[
                        Color(0xFF981DB9),
                        Color(0xFF0F76CE),
                      ],
                    ),
                    radius: const Radius.circular(12),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        ImageIcon(
                          AssetImage('assets/images/sprint.png'),
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(width: 70),
                        Text(
                          'Tática',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'OUTFIT',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    onTap: () => Navigator.pushNamed(context, 'avatatPage'),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  signOut() async {
    await _firebaseAuth.signOut().then(
          (user) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const InitialPage(),
            ),
          ),
        );
  }
}