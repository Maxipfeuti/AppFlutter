part of 'navigation_page_bloc.dart';

@immutable
abstract class NavigationPageEvent {}


class Index extends NavigationPageEvent {
  final int index;

  Index({
    required this.index
  });
}