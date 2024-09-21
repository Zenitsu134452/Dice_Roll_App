import 'package:flutter/material.dart';
import 'package:fluter_basics/styled_text.dart';

import 'dice_roller.dart';

class GradientContainer extends StatelessWidget {

 const GradientContainer(this.color1,this.color2,{super.key});

 const GradientContainer.purple({super.key})
    :color1=Colors.deepPurple,
     color2=Colors.indigo;

final Color color1;
final Color color2;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child:DiceRoller(),
      ),
    );
  }
}
