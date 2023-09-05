import 'package:url_launcher/url_launcher.dart';

void customUrlLauncher({required String? url}) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {}
  }
}
