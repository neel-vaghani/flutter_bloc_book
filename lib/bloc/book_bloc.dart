import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/book.dart';
import 'book_event.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(const BookState()) {
    on<BookSelected>((event, emit) {
      emit(state.copyWith(selectedBook: () => event.book));
    });
    on<BookDeselected>((event, emit) {
      emit(state.copyWith(selectedBook: () => null));
    });
  }
}
