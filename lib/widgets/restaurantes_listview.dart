import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:proyecto_01_app/bloc/bloc/favorite_icon_bloc.dart';

class RestaurantesListview extends StatelessWidget {
  const RestaurantesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FadeInDown(
        child: ListView(
          children: const [
            RestauranteItem(
              image: 'assets/imgs/trebol.png',
              title: 'El Trébol',
              subtitle: '15 - 30 min Envio \$179',
              number: '4.4',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/mc_cafe.png',
              title: 'McCafé FLA',
              subtitle: '15 - 30 min Envio \$99',
              number: '4.2',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/mostaza.png',
              title: 'Mostaza',
              subtitle: '15 - 25 min Envio \$200',
              number: '5.0',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/mcdonal.png',
              title: 'McDonalds',
              subtitle: '10 - 20 min Envio \$100',
              number: '5.5',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/hamilton.png',
              title: 'Hamilton',
              subtitle: '20 - 30 min Envio \$300',
              number: '4.4',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/holy.png',
              title: 'Holy',
              subtitle: '15 - 30 min Envio \$179',
              number: '4.6',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/ava.png',
              title: 'AVÁ',
              subtitle: '15 - 30 min Envio \$179',
              number: '3.5',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/pino.png',
              title: "Pino's Pizzeria",
              subtitle: '15 - 30 min Envio \$179',
              number: '4.7',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/cremo.png',
              title: 'Cremolatti Helados',
              subtitle: '15 - 30 min Envio \$179',
              number: '4.4',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
            RestauranteItem(
              image: 'assets/imgs/duomo.png',
              title: 'Duomo Helados',
              subtitle: '15 - 30 min Envio \$179',
              number: '4.4',
            ),
            Divider(
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class RestauranteItem extends StatefulWidget {
  final String image;
  final String title;
  final String subtitle;
  final String number;

  const RestauranteItem(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.number});

  @override
  State<RestauranteItem> createState() => _RestauranteItemState();
}

class _RestauranteItemState extends State<RestauranteItem> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteIconBloc, FavoriteIconState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            height: 90,
            child: Row(
              children: [
                //imagen
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(color: Colors.black.withOpacity(0.2)),
                        bottom:
                            BorderSide(color: Colors.black.withOpacity(0.2)),
                        right: BorderSide(color: Colors.black.withOpacity(0.2)),
                        left: BorderSide(color: Colors.black.withOpacity(0.2)),
                      )),
                  child: Image.asset(
                    widget.image,
                  ),
                ),

                const SizedBox(width: 10),

                //descripcion
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),

                const Spacer(),

                //votacion
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_half_sharp,
                          color: Colors.yellow.shade800,
                        ),
                        const SizedBox(width: 5),
                        Text(widget.number)
                      ],
                    ),
                    const SizedBox(height: 15),
                    IconButton(
                      //icon: const Icon(Icons.favorite_border),

                      icon: (state.lstFavorite.contains(widget.title)) ? const Icon(
                        Icons.favorite_rounded,
                        color: Colors.redAccent  ,
                      ) : const Icon(Icons.favorite_border),
                      
                      onPressed: () {
                        context.read<FavoriteIconBloc>().add(OnAgregarFavorito(nombre: widget.title));
                        setState(() {
                          
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
