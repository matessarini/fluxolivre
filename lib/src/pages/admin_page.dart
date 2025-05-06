import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF000000),
        foregroundColor: const Color(0xFFFFFFFF),
        title: const Text('Admin-FluxoLivre'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildGridItem(
              context,
              'Usuários',
              Icons.people,
            ),
            _buildGridItem(
              context,
              'Relatório',
              Icons.bar_chart,
            ),
            _buildGridItem(
              context,
              'Configurações',
              Icons.settings,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(BuildContext context, String title, IconData icon) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        color: Colors.black54,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 40.0,
                color: Colors.white,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.7),
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
