import 'package:flutter/material.dart';
import 'predictive_data.dart';
import 'settings_screen.dart';
import 'risk_percent_screen.dart';
import 'notification_screen.dart';




class IPhone16ProMax1 extends StatelessWidget {
  const IPhone16ProMax1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
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
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 82,
                    height: 82 / 1.05,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 22),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFCE0),
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
                  children: [
                    Image.asset(
                      'assets/images/background.png',
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                    ),

                    const SizedBox(height: 24),

                    GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const RiskPercentScreen()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/real_time_detection.png',
                              width: 265,
                              height: 265 / 1.41,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                    const SizedBox(height: 24),

                    GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const IPhone16ProMax5()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/images/predictive_data.png',
                              width: 265,
                              height: 265 / 1.41,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                    const SizedBox(height: 24),

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
                              'assets/images/notification.png',
                              width: 265,
                              height: 265 / 1.41,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),

                    const SizedBox(height: 88),

                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9A4D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(70, 24, 70, 24),
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
                                child: Image.asset(
                                  'assets/icons/home.png',
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            
                            const SizedBox(width: 20),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SettingsScreen()),
                                  );
                                },
                                child: Image.asset(
                                  'assets/icons/settings.png',
                                  width: 48,
                                  height: 48,
                                  fit: BoxFit.contain,
                                ),
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
}
