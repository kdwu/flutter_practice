import 'package:flutter/material.dart';
import 'package:flutter_pratice/pages/profile_pages/coupons_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double mWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'res_images/top_bg.png',
                width: mWidth,
                height: mWidth * 300.0 / 375.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                      child: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xFF333333),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Image.asset(
                    "res_images/default_header.png",
                    width: 70.0 * mWidth / 375,
                    height: 70.0 * mWidth / 375,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Hello',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF333333),
                    ),
                  ),
                ],
              ),
            ],
          ),
          _buildItem('My Coupons', 'res_images/profile_icon1.png'),
          _buildItem('Order History', 'res_images/profile_icon2.png'),
          _buildItem('FAQ', 'res_images/profile_icon3.png'),
          _buildItem('Policy', 'res_images/profile_icon4.png'),
          _buildItem('About Us', 'res_images/profile_icon5.png'),
          _buildItem('Setting', 'res_images/profile_icon6.png'),
        ],
      ),
    );
  }

  _buildItem(String text, String img) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        if (text == 'My Coupons') {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const CouponsPage();
              },
            ),
          );
        }
      },
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                img,
                width: 25,
                height: 25,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF666666),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Image.asset(
                "res_images/right_arrow.png",
                width: 6,
                height: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
