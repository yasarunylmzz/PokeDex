import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:poke_dex/constant/const.dart';
import 'package:poke_dex/constant/ui_helper.dart';
import 'package:poke_dex/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemonModel;
  const PokeInformation({super.key, required this.pokemonModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _builtInformationRow('Name:', pokemonModel.name),
            _builtInformationRow('Height:', pokemonModel.height),
            _builtInformationRow('Weight:', pokemonModel.weight),
            _builtInformationRow('Spawn Time:', pokemonModel.spawnTime),
            _builtInformationRow('Weaknesses:', pokemonModel.weaknesses),
            _builtInformationRow('Pre Evolution:', pokemonModel.prevEvolution),
            _builtInformationRow('Next Evolution:', pokemonModel.nextEvolution),
          ],
        ),
      ),
    );
  }

  _builtInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokeInfoLabelStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            style: Constants.getPokeInfoTextStyle(),
          )
        else if (value.toString() == "[]")
          Text(
            'Not Available',
            style: Constants.getPokeInfoTextStyle(),
          )
        else
          Text(
            value,
            style: Constants.getPokeInfoTextStyle(),
          ),
      ],
    );
  }
}
