import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class HngLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Link(
      //This widget right here provide a link to the Intenship website.
      uri: Uri.parse('https://zuri.team'),
      builder: (context, followLink) {
        return TextButton(
            onPressed: followLink,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('https://zuri.team ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            ));
      },
      target: LinkTarget.self,
    );
  }
}
