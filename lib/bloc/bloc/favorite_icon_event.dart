part of 'favorite_icon_bloc.dart';

abstract class FavoriteIconEvent extends Equatable {

  const FavoriteIconEvent();

  @override
  List<Object> get props => [];
}

class OnAgregarFavorito extends FavoriteIconEvent {
  
  final String nombre;

  const OnAgregarFavorito({
    required this.nombre
  });
}
