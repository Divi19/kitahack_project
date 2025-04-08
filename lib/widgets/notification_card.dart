import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String image;
  final String time;
  final String description;

  const NotificationCard({
    Key? key,
    required this.image,
    required this.time,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 386),
      decoration: BoxDecoration(
        color: const Color(0xFFFFB073),
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.fromLTRB(14, 14, 14, 12),
      child: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFFFE5B4), 
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),

          // Content
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon
              ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: Image.asset(
                  image,
                  width: 38,
                  height: 38,
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(width: 10),

              // Text content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Time
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 51,
                          child: Text(
                            time,
                            style: const TextStyle(
                              fontFamily: 'ABeeZee',
                              fontSize: 13,
                              color: Color(0xFF7F7F7F),
                              height: 2,
                              fontFeatures: [
                                FontFeature.disable('liga'),
                                FontFeature.disable('clig'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Description
                    Text(
                      description,
                      style: const TextStyle(
                        fontFamily: 'ABeeZee',
                        fontSize: 15,
                        color: Colors.black,
                        height: 1,
                        letterSpacing: -0.23,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}