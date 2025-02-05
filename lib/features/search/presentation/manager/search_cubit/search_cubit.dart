import 'package:bloc/bloc.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchReop searchReop;
  SearchCubit(this.searchReop) : super(SearchInitial());

  Future<void>FetchSearchBooks({required String title})async{
    emit(SearchLoading());
    var result= await searchReop.FetchSearchData(title: title);
    result.fold((failure){
      emit(SearchFailure(errorMessage: failure.errorsMessage));
    }, (books){
     emit(SearchSuccess(book: books));
    });
  }

  checkInputSearch(val){
    if(val==""){
      emit(SearchInitial());
    }
  }


}
