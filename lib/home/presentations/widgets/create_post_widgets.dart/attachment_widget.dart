import 'package:flutter/material.dart';


class AttachmentWidget extends StatelessWidget {
  const AttachmentWidget({super.key, required this.attachment});

  final String? attachment;


  @override
  Widget build(BuildContext context) {

    return Container(
      child: 
      Image.network(attachment!)
      
    );
  }
}

enum AttachmentType{
  image,
  video
}