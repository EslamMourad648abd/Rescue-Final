import 'package:url_launcher/url_launcher.dart';

void _launchURL(String _url) async {
  if (!await launch(_url)) throw 'Could not launch $_url';
}
