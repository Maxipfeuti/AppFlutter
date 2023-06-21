import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_page_event.dart';
part 'navigation_page_state.dart';

class NavigationPageBloc extends Bloc<NavigationPageEvent, NavigationPageState> {
  NavigationPageBloc() : super(const NavigationPageInitial(index: 0)) {
    on<NavigationPageEvent>((event, emit) {
      if ( event is Index ) {
        emit ( NavigationPageInitial(index: event.index) );
      }
    });
  }
}
