# tfmodel

A Flutter package helps to show transfer functions properly. It also includes a transfer function component widget.

<img alt="gif" heigtht="400" width="220" src="https://raw.githubusercontent.com/stelselim/tfmodel_flutter_package/master/doc/tfmodel.gif">

## Installation

```yaml
dependencies:
  tfmodel: <latest_version>
```

## How To Use

```dart
var tfmodel = TFModel(
    numerator: "1 0 2.4",
    denominator: "2.2 -2 0 5.2",
    showFormatError: false,
  );

var tfComponent = TFComponent(
    system: tfmodel,
    // divider: Divider(),
    // denominatorTextStyle:  TextStyle(),
    // numeratorTextStyle: TextStyle(),
);
```

<view style="display: flex;">

  <img alt="Screenshot" src="https://raw.githubusercontent.com/stelselim/tfmodel_flutter_package/master/doc/pic1.png" style="padding-right: 20px;" heigtht="400" width="220"/>
  
  <img alt="Screenshot" src="https://raw.githubusercontent.com/stelselim/tfmodel_flutter_package/master/doc/pic2.png" heigtht="400" width="220"/>
    
    
</view>
