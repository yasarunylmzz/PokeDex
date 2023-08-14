import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/constant/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';
import 'package:poke_dex/pages/detail_page.dart';
import 'package:poke_dex/widget/poke_image.dart';

import '../constant/const.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: ((context) => DetailPage(pokemon: pokemon))),
        );
      },
      child: Card(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: Constants.getPokemonNameTitleTextStyle(),
              ),
              Chip(
                label: Text(
                  pokemon.type![0],
                  style: Constants.getTypeChipTitleTextStyle(),
                ),
              ),
              Expanded(
                child: PokeImageBall(pokemon: pokemon),
              ),
            ],
          ),
        ),
        color: UIHelper.getColorFromType(pokemon.type![0]),
        elevation: 3,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
      ),
    );
  }
}
