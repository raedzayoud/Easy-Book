import 'package:book/core/utlis/router.dart';
import 'package:book/core/widgets/custom_error.dart';
import 'package:book/features/home/presentation/manager/similar_book_cubit/similar_book_cubit.dart';
import 'package:book/features/home/presentation/view/widget/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
              itemCount: state.list.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.KBookDetails,extra:state.list[index] );
                  },
                  child: CustomBookItem(
                    imageurl: "${state.list[index].volumeInfo!.imageLinks!.thumbnail ?? ''}",
                  ),
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
