import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('COUNSELLING CELL')),
        ),
        //backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/cover.webp"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 225.0),
            child: Card(
              color: Color(0xFF960D0A),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const ListTile(

                    title: Text('We are here for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                      ),),
                    subtitle: Text(
                      'A safe space for you to discuss your emotions. Whenever you need help,we are listening.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0,

                      ),),
                  ),
                  SizedBox(height: 40),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                            child: Text(
                                "Book a session".toUpperCase(),
                                style: TextStyle(fontSize: 16)
                            ),
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        side: BorderSide(color: Colors.white)
                                    )
                                )
                            ),
                            onPressed: () => openBrowserTab(),
                        ),
                      ]
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}

// _launchURL() async {
//   const url = '';
//   if (await canLaunch(url)){
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }

openBrowserTab() async {
  await FlutterWebBrowser.openWebPage(url: "https://docs.google.com/forms/d/e/1FAIpQLSda4FjhkKih3U1mBqfkeH3jVQCzPzro2PsWcqhHfurtFE0RUA/viewform");
}