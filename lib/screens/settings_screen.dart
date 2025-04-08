import 'package:flutter/material.dart';
import 'iphone_16_pro_max_1.dart';
import 'notification_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          constraints: const BoxConstraints(maxWidth: 480),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(80, 57, 80, 10),
                decoration: const BoxDecoration(
                  color: Color(0xFFFF9A4D),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                child: Center(
                  
                  child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const IPhone16ProMax1()),
                          );
                        },
                        child: Image.asset(
                          'assets/images/logo.png',
                          width: 82,
                          height: 82,
                          fit: BoxFit.contain,
                        ),
                      ),
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.symmetric(vertical: 23),
                width: double.infinity,
                constraints: const BoxConstraints(maxWidth: 379),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD373),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromRGBO(75, 75, 75, 0.15),
                      blurRadius: 16,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromRGBO(31, 67, 109, 0.25),
                                  blurRadius: 6,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/profile.png',
                              width: 40,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            'Dr Octopus',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 24),
                      height: 1,
                      color: const Color(0xFFCACACA),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Account Settings',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF975102),
                            ),
                          ),
                          const SizedBox(height: 32),
                          _buildSettingsOption('Edit profile'),
                          const SizedBox(height: 24),
                          _buildSettingsOption('Change password'),
                          const SizedBox(height: 24),
                          _buildSettingsOption('Add a payment method'),
                          const SizedBox(height: 24),
                          _buildSettingsOption('Push notifications'),
                          const SizedBox(height: 24),
                          _buildSettingsOption('Dark mode'),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 88),
                      height: 1,
                      color: const Color(0xFFADADAD),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'More',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFFADADAD),
                            ),
                          ),
                          const SizedBox(height: 33),
                          _buildSettingsOption('About us'),
                          const SizedBox(height: 24),
                          _buildSettingsOption('Privacy policy'),
                          const SizedBox(height: 25),
                          _buildSettingsOption('Terms and conditions'),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(top: 24, right: 31),
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9A4D),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 70,
                          vertical: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const NotificationScreen()),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    'assets/icons/home.png',
                                    width: 48,
                                    height: 48,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            const SizedBox(width: 20),
                            Image.asset(
                              'assets/icons/settings.png',
                              width: 48,
                              height: 48,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSettingsOption(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
    );
  }
}