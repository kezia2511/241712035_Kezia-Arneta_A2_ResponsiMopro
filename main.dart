import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFB3E5FC), 
              Color.from(alpha: 1, red: 0.459, green: 0.702, blue: 0.91), 
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              

              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 40),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg_code.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.5,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'Teknik Informatika',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Fakultas Vokasi',
                      style: TextStyle(
                        color: Color.fromARGB(179, 0, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      '"KEGAGALAN ADALAH KEBERHASILAN YANG BELUM TEPAT PADA WAKTUNYA"',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(179, 0, 0, 0),
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              
              buildInfoCard(Icons.person, 'Nama', 'Kezia Arneta Patricia Manurung'),
              buildInfoCard(Icons.tag, 'NIM', '241712035'),
              buildInfoCard(Icons.home, 'Kom', 'A2'),
              buildInfoCard(Icons.email, 'Email', 'keziaarneta67@gmail.com'),

              const SizedBox(height: 20),

            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Row(
                  children: [
                    
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF3F8), 
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.pinkAccent.withOpacity(0.15),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.favorite, color: Colors.pinkAccent),
                                SizedBox(width: 6),
                                Text(
                                  'Tentang Saya 💕',
                                  style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Aku Kezia, mahasiswa Teknik Informatika yang suka INSECURE dengan dirinya sendiri ✨ \n Aku suka kopi🧋 walaupun aslam ku tidak suka💖',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFE3F2FD), 
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueAccent.withOpacity(0.15),
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Row(
                              children: [
                                Icon(Icons.star_rounded, color: Colors.lightBlue),
                                SizedBox(width: 6),
                                Text(
                                  'Hobi 🌸',
                                  style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 6),
                            Text(
                              '✨ Dance (Sebenarnya bakat terpendam sih)\n📸 Foto-foto aesthetic\n💻 Ngedrakor sambil ngemil~',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[700],
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Edit Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFF2196F3), // biru
              Color(0xFFFF80AB), // pink lembut
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.white),
          title: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            value,
            style: const TextStyle(color: Colors.white),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
        ),
      ),
    );
  }
}
