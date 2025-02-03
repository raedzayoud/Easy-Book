import 'package:bloc/bloc.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  final HomeRepo homeRepo;
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());

  Future<void> fetchcubitSimilarBooks({required String categorie}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.fetchSimilarBooks(categorie: categorie);
    result.fold((failure) {
      emit(SimilarBookFailure(errorMessage: failure.errorsMessage));
    }, (books) {
      emit(SimilarBookSuccess(list: books));
    });
  }
}
