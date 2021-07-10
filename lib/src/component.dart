import 'package:flutter/material.dart';
import 'package:tfmodel/src/model.dart';

class TFComponent extends StatelessWidget {
  // System in Transfer Function Model
  final TFModel system;
  final TextStyle? numeratorTextStyle;
  final TextStyle? denominatorTextStyle;
  final Divider? divider;
  const TFComponent({
    Key? key,
    required this.system,
    this.divider,
    this.numeratorTextStyle,
    this.denominatorTextStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Numerator
          Container(
            child: Text(
              system.formattedNumeratorText,
              style: numeratorTextStyle ??
                  TextStyle(
                    fontSize: 22,
                  ),
            ),
          ),

          // Divider
          !(system.formattedNumeratorText != "" ||
                  system.formattedDenominatorText != "")
              ? Container()
              : divider ??
                  Divider(
                    endIndent: MediaQuery.of(context).size.width / 9,
                    indent: MediaQuery.of(context).size.width / 9,
                    color: Colors.black,
                  ),

          // Denominator
          Container(
            child: Text(
              system.formattedDenominatorText,
              style: denominatorTextStyle ??
                  TextStyle(
                    fontSize: 22,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
