import 'package:my_bookly/Core/Utils/fonction/custom_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } 
  else {
    customSnackBar(context, 'cannot Launch $url');
  }
}
}

