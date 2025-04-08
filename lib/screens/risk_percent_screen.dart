import 'package:flutter/material.dart';
import 'iphone_16_pro_max_1.dart';


class RiskPercentScreen extends StatelessWidget {
  const RiskPercentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxWidth: 480),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTopSection(context),
              _buildMiddleImage(),
              _buildBottomImage(),
            ],
          ),
        ),
      ),
    );
  }

Widget _buildTopSection(BuildContext context) {
  return Column(
    children: [
      SizedBox(
        height: 450,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFFFF9A4D),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
              ),
            ),

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(80, 60, 80, 7),
                decoration: const BoxDecoration(
                  color: Color(0xFFFF9A4D),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
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

            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Center(
                child: _buildChartCard(),
              ),
            ),
          ],
        ),
      ),

      const SizedBox(height: 30),
    ],
  );
}

  Widget _buildChartCard() {
    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 382),
      decoration: BoxDecoration(
        color: const Color(0xFFFFE3BF),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 1.75,
            offset: const Offset(0, 0.5),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.19),
            blurRadius: 6.25,
            offset: const Offset(0, 1.85),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Image.asset(
            'assets/images/solar_panel.png',
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

    Widget _buildMiddleImage() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 1.75,
            offset: const Offset(0, 0.5),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.19),
            blurRadius: 6.25,
            offset: const Offset(0, 1.85),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/risk_percentage.png',
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildBottomImage() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 1.75,
            offset: const Offset(0, 0.5),
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.19),
            blurRadius: 6.25,
            offset: const Offset(0, 1.85),
          ),
        ],
      ),
      child: Image.asset(
        'assets/images/bottom.png',
        width: double.infinity,
        fit: BoxFit.contain,
      ),
    );
  }
}