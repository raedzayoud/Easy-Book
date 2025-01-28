import 'package:book/constant.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/custom_appar_book_details.dart';
import 'package:book/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomApparBookDetails(),
              Container(
                margin: EdgeInsets.only(left: width*0.25,right: width * 0.1,top: 10),
                child: CustomBookItem(),
              ),
              Text("The Jungle Book",style: AppStyles.textStyle20.copyWith(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontFamily: KGTSectraFine
              ),),
              SizedBox(height: 5,),
              Opacity(
                opacity: 0.7,
                child: Text("Rydyard Kipling",style: AppStyles.textStyle16.copyWith(
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
