import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Saya'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // =========================
            // FOTO PROFIL
            // =========================
           CircleAvatar(
  radius: 60,
  backgroundImage: AssetImage('assets/images/alifnaufal.jpg'),
),
            SizedBox(height: 16),

            // =========================
            // NAMA
            // =========================
            Text(
              'Alif Naufal | C030324065',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),

            // =========================
            // BIO
            // =========================
            Text(
              'Web3 Enthusiast | UI/UX Designer | Content Creator',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 24),

            // =========================
            // INFO CARD
            // =========================
            _buildInfoCard(
              icon: Icons.email,
              title: 'Email',
              value: 'alifnaufal9d@gmail.com',
            ),
            SizedBox(height: 12),

            _buildInfoCard(
              icon: Icons.phone,
              title: 'Telepon',
              value: '+62 878-0482-8992',
            ),
            SizedBox(height: 12),

            _buildInfoCard(
              icon: Icons.location_on,
              title: 'Lokasi',
              value: 'Banjarmasin, Indonesia',
            ),
            SizedBox(height: 12),

            _buildInfoCard(
              icon: Icons.web,
              title: 'Website',
              value: 'www.zekioserv.com',
            ),
            SizedBox(height: 12),

            _buildInfoCard(
              icon: Icons.camera_alt,
              title: 'Instagram',
              value: '@zekioserv',
            ),

            SizedBox(height: 24),

            // =========================
            // BUTTON
            // =========================
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.edit),
                    label: Text('Edit Profil'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.logout),
                    label: Text('Logout'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // =========================
  // WIDGET INFO CARD
  // =========================
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        subtitle: Text(value),
      ),
    );
  }
}