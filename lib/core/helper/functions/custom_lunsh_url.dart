import 'package:untitled1/core/helper/functions/show_snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customLunshUrl(context, String? url) async {
  Uri uri = Uri.parse(url!);
  if (await canLaunchUrl(uri)) {
    await canLaunchUrl(uri);
    await launchUrl(uri);
  } else {
    showsnackbar(context, url);
  }
}
