import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_uts_online_transportation/pages/order_page.dart';
import 'package:project_uts_online_transportation/pages/template/template-card-button.dart';
import 'package:project_uts_online_transportation/pages/template/template_nav_bar.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});
  static const String idScreen = "history";

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
          body: Stack(
            // disini menggunakan stack widget karena biar templatehead() tetep diatas, soalnya widget lainnya mw dibkin centered
            children: [
              Positioned(
                //positioned widget cuma bisa dipake di dlm stack widget, mangknya harus pake stack
                top: 0,
                left: 0,
                right: 0,
                child: TemplateHead(
                  title: "HISTORY",
                ),
              ),
              // SizedBox(
              //   height: 50,
              // ),

              Positioned(
                top: 100,
                left: 25,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black,
                    ),
                    shape: BoxShape.circle,
                    color: Color(0xFF3B60CE),
                  ),
                  child: TextButton(
                    onPressed: () {
                      // Navigate to the order page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OrderPage()),
                      );
                    },
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                            EdgeInsets.only(left: 8))),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              Center(
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // centered semua widgetnya
                  children: [
                    Text('test'),
                    Text('data'),
                  ], // tinggal ganti ini jadi button card yang baru dan jangan lupa wrap semuanya pake single child scroll view
                ),
              ),
            ],
          ),
        ));
  }
}
