part of 'favorite_icon_bloc.dart';

 class FavoriteIconState extends Equatable {

  final List<String> lstFavorite;

  FavoriteIconState({
    List<String>? lstFavorite
  }): lstFavorite = lstFavorite ?? [];

  FavoriteIconState copyWith ({
    List<String>? lstFavorite
  }) => FavoriteIconState (lstFavorite: lstFavorite ?? this.lstFavorite);
  
  @override
  List<Object> get props => [ lstFavorite ];
}


