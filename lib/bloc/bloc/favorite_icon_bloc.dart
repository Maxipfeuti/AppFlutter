import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'favorite_icon_event.dart';
part 'favorite_icon_state.dart';

class FavoriteIconBloc extends Bloc<FavoriteIconEvent, FavoriteIconState> {
  
  FavoriteIconBloc() : super( FavoriteIconState()) {
    
    on<OnAgregarFavorito>(_onAgregarFavorito);
  }

  Future<void> _onAgregarFavorito(OnAgregarFavorito event, Emitter<FavoriteIconState> emit) async{
    List<String> favoritos = state.lstFavorite;
    if ( !state.lstFavorite.contains(event.nombre)  ){
      favoritos.add(event.nombre);
    } else {
      favoritos.remove(event.nombre);
    }

    emit ( state.copyWith(
      lstFavorite: favoritos
  ));
  }
}
