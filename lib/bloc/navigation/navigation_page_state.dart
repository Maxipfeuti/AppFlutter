part of 'navigation_page_bloc.dart';

@immutable
abstract class NavigationPageState {
  final int index;

  const NavigationPageState({
    required this.index
  });
}

class NavigationPageInitial extends NavigationPageState {
  const NavigationPageInitial({required super.index});
}
