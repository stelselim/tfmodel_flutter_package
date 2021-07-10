import 'package:flutter/foundation.dart';

import 'package:tfmodel/src/utility.dart';

class TFModel {
  final String numerator;
  final String denominator;
  final bool showFormatError; // Shows Format Error

  String formattedNumeratorText = "";
  String formattedDenominatorText = "";

  List<double> numeratorCoeffs = [];
  List<double> denominatorCoeffs = [];

  TFModel({
    required this.numerator,
    required this.denominator,
    this.showFormatError = false,
  }) {
    if (numerator != "") {
      try {
        this.formattedNumeratorText = makeSfunction(this.numerator);
        this.numeratorCoeffs = getCoeffs(this.numerator);
      } catch (e) {
        if (showFormatError) throw (e);
      }
    }
    if (denominator != "") {
      try {
        this.formattedDenominatorText = makeSfunction(this.denominator);
        this.denominatorCoeffs = getCoeffs(this.denominator);
      } catch (e) {
        if (showFormatError) throw (e);
      }
    }
  }

  String get toNum {
    String toNum = "";
    for (int i = 0; i < numeratorCoeffs.length; i++) {
      // If last, no need to put comma
      if (i == numeratorCoeffs.length - 1) {
        var e = numeratorCoeffs.elementAt(i);
        toNum = toNum + "$e";
      } else {
        var e = numeratorCoeffs.elementAt(i);
        toNum = toNum + "$e,";
      }
    }
    return toNum;
  }

  String get toDen {
    String toDen = "";
    for (int i = 0; i < denominatorCoeffs.length; i++) {
      // If last, no need to put comma
      if (i == denominatorCoeffs.length - 1) {
        var e = denominatorCoeffs.elementAt(i);
        toDen = toDen + "$e";
      } else {
        var e = denominatorCoeffs.elementAt(i);
        toDen = toDen + "$e,";
      }
    }
    return toDen;
  }

  bool get isProper {
    // Proper Check For Transfer Function
    if (denominatorCoeffs.length > 1 &&
        numeratorCoeffs.length != 0 &&
        numeratorCoeffs.length <= denominatorCoeffs.length) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return 'TFModel(formattedNumeratorText: $formattedNumeratorText, formattedDenominatorText: $formattedDenominatorText, numeratorCoeffs: $numeratorCoeffs, denominatorCoeffs: $denominatorCoeffs)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TFModel &&
        other.formattedNumeratorText == formattedNumeratorText &&
        other.formattedDenominatorText == formattedDenominatorText &&
        listEquals(other.numeratorCoeffs, numeratorCoeffs) &&
        listEquals(other.denominatorCoeffs, denominatorCoeffs);
  }

  @override
  int get hashCode {
    return formattedNumeratorText.hashCode ^
        formattedDenominatorText.hashCode ^
        numeratorCoeffs.hashCode ^
        denominatorCoeffs.hashCode;
  }

  TFModel copyWith({
    String? numerator,
    String? denominator,
    bool? showFormatError,
  }) {
    return TFModel(
      numerator: numerator ?? this.numerator,
      denominator: denominator ?? this.denominator,
      showFormatError: showFormatError ?? this.showFormatError,
    );
  }
}
