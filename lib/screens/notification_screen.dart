import 'package:flutter/material.dart';
import '../widgets/notification_card.dart';
import 'iphone_16_pro_max_1.dart';
import 'settings_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 480),
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFF9A4D),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(999),
                          bottomRight: Radius.circular(999),
                        ),
                      ),
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFF9A4D),
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        padding: const EdgeInsets.fromLTRB(80, 60, 80, 7),
                        margin: const EdgeInsets.only(top: 67),
                        child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const IPhone16ProMax1()),
                                  );
                                },
                        child: Center(
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 82,
                            height: 82 / 1.05,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),

                const SizedBox(height: 32),
                NotificationCard(
                  image: 'assets/images/profile.png',
                  time: '18:43 PM',
                  description: 'Optimal weather condition',
                ),

                const SizedBox(height: 23),
                NotificationCard(
                  image: 'assets/images/profile.png',
                  time: '15:32 PM',
                  description: 'Optimal weather condition',
                ),

                const SizedBox(height: 23),
                NotificationCard(
                  image: 'assets/images/weather_cond.png',
                  time: '12:41 PM',
                  description: 'Unfavourable weather condition ',
                ),

                const SizedBox(height: 23),
                NotificationCard(
                  image: 'assets/images/dirt.png',
                  time: '11:13 AM',
                  description: 'Potential inefficiency due to dirt',
                ),

                const SizedBox(height: 23),
                NotificationCard(
                  image: 'assets/images/profile.png',
                  time: '10:01 AM',
                  description: 'Optimal weather conditon',
                ),

                const SizedBox(height: 23),
                NotificationCard(
                  image: 'assets/images/warning.png',
                  time: '9:23PM',
                  description: 'Maintenance required',
                ),

                const SizedBox(height: 23),
                NotificationCard(
                  image: 'assets/images/warning.png',
                  time: '7:17 AM',
                  description: 'Potential damage ',
                ),

                // Bottom footer
                const SizedBox(height: 55),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFF9A4D),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(999),
                      topRight: Radius.circular(999),
                    ),
                  ),
                  padding: const EdgeInsets.only(top: 17),
                  child: Container(
                    width: double.infinity,
                    color: Color(0xFFFF9A4D),
                    padding: const EdgeInsets.fromLTRB(70, 24, 70, 24),
                    margin: const EdgeInsets.only(bottom: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/home.png',
                          width: 48,
                          height: 48,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 20),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const SettingsScreen()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              'assets/icons/settings.png',
                              width: 48,
                              height: 48,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}