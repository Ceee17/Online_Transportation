import 'package:flutter/material.dart';
import 'package:project_uts_online_transportation/pages/template/back-button.dart';
import 'package:project_uts_online_transportation/pages/template/templatehead.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TemplateHead(
          title: 'EDIT PROFILE',
        ),
        BackBtn(),
      ],
    ));
  }
}
