import 'package:book/constant.dart';
import 'package:book/core/utlis/assets.dart';
import 'package:book/core/utlis/styles.dart';
import 'package:book/features/home/presentation/view/widget/rating_book.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListBestSeller extends StatelessWidget {
  const CustomListBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: SizedBox(
            height: 150,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: const BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AppImages.testimage))),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Harry Poter and the Global of Fire",
                      style: AppStyles.textStyle20
                          .copyWith(fontFamily: KGTSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "J.K Rowling",
                style: AppStyles.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "19.99 £",
                    style: AppStyles.textStyle20
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  
                  RatingBook()
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
