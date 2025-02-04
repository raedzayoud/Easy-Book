import 'package:book/core/widgets/custom_button.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookButton extends StatelessWidget {
  final BookModel bookModel;
  const BookButton({super.key, required this.bookModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: CustomButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12), topLeft: Radius.circular(12)),
          textColor: Colors.black,
          text: "Free",
          fontSize: 15,
        )),
        Expanded(
            child: CustomButton(
          onPressed: () async {
            Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            }
          },
          backgroundColor: Color(0xFFEF8262),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12), topRight: Radius.circular(12)),
          textColor: Colors.white,
          text: "Preview ",
          fontSize: 15,
        )),
      ],
    );
  }
}
