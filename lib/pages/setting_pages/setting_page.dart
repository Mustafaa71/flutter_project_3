import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_3/componants/profile_setting.dart';
import 'package:flutter_project_3/componants/setting_components/setting_bar.dart';
import 'package:flutter_project_3/pages/setting_pages/contact_us_page.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    final userEmail = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: SettingBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Welcome ${userEmail.email}',
                style: GoogleFonts.ptSansNarrow(
                  textStyle: const TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12.0),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ContactUsPage()));
            },
            child: const ProfileSetting(
              label: 'Help & Support',
              icon: Icons.phone_enabled_outlined,
            ),
          ),
          const ProfileSetting(
            label: 'About Jahez',
            icon: Icons.album_outlined,
          ),
          const ProfileSetting(
            label: 'Privacy Policy',
            icon: Icons.privacy_tip_outlined,
          ),
          const ProfileSetting(
            label: 'Change Language',
            icon: Icons.flip_camera_android,
          ),
          const SizedBox(height: 40.0),
          ProfileSetting(
            label: 'Log Out',
            icon: Icons.output_rounded,
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
          ),
          Image.asset('images/jahez.jpg'),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
