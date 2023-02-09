import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final Uri _urlInstagram = Uri.parse('https://www.instagram.com/jahezapp/');
  final Uri _urlWhatsapp = Uri.parse('https://web.whatsapp.com/');

  Future<void> _launchUrlInstagram() async {
    if (!await launchUrl(_urlInstagram)) {
      throw Exception('Could not launch $_urlInstagram');
    }
  }

  Future<void> _launchUrlWhatsapp() async {
    if (!await launchUrl(_urlWhatsapp)) {
      throw Exception('Could not launch $_urlWhatsapp');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/jahez.jpg'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            const Text(
              'Because we care about you',
              style: TextStyle(color: Constants.kAppbarColor, fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12.0),
            const Text(
              'Tell us how can we Help you.',
              style: TextStyle(color: Constants.kAppbarColor, fontSize: 15.0),
            ),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: _launchUrlInstagram,
                  child: const Image(
                      image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2626/2626270.png'), height: 50.0),
                ),
                InkWell(
                  onTap: _launchUrlWhatsapp,
                  child: const Image(
                      image: NetworkImage('https://cdn-icons-png.flaticon.com/512/733/733585.png'), height: 40.0),
                ),
                const Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/145/145812.png'), height: 40.0),
                const Image(
                    image: NetworkImage('https://cdn-icons-png.flaticon.com/512/2111/2111646.png'), height: 40.0),
                const Image(
                    image: NetworkImage('https://cdn-icons-png.flaticon.com/512/3670/3670157.png'), height: 40.0),
              ],
            ),
            const SizedBox(height: 8.0),
            const Divider(thickness: 1.0, color: Constants.kAppbarColor),
            const SizedBox(height: 20.0),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter your text here',
                hintStyle: TextStyle(color: Colors.white),
                filled: true,
                fillColor: Color(0xfff6f8fa),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Constants.kAppbarColor,
                    width: 1,
                  ),
                ),
                border: InputBorder.none,
              ),
              maxLines: 8,
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Constants.kAppbarColor, borderRadius: BorderRadius.circular(10.0)),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'send your question',
                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 100.0),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
