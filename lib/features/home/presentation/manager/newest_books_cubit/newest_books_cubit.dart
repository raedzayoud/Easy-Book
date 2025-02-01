import 'package:bloc/bloc.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  HomeRepo homeRepo;
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

   Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewestBooksFailure(errorMessage: failure.errorsMessage));
    }, (books) {
      emit(NewestBooksSuccess(list: books));
    });
  }
}
