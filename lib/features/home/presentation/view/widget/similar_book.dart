import 'package:book/core/widgets/custom_error.dart';
import 'package:book/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if(state is SimilarBookSuccess){
          return SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomBookItem(
                  imageurl: "https://picsum.photos/id/237/200/300",
                );
              }),
        );
        } else if(state is SimilarBookFailure){
          return CustomError(errorMessage: state.errorMessage);
        }
        else{
          return Center(child: CircularProgressIndicator(color: Colors.blue,),);
        }
      },
    );
  }
}
