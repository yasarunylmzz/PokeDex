import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:poke_dex/constant/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokeImageBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeBallImageUrl = 'images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeBallImageUrl,
            width: UIHelper.calculatePokeImg(),
            height: UIHelper.calculatePokeImg(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => Icon(Icons.error),
              imageUrl: pokemon.img ?? '',
              width: UIHelper.calculatePokeImg(),
              height: UIHelper.calculatePokeImg(),
              fit: BoxFit.fitHeight,
              placeholder: (context, url) => CircularProgressIndicator(
                color: UIHelper.getColorFromType(pokemon.type![0]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
