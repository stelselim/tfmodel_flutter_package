# tfmodel

A Flutter package helps to show transfer functions properly. It also includes a transfer function component widget.

<br/>
<br/>

<img src="./doc/tfmodel.gif" width=250>

<br/>
<br/>

## Installation

```yaml
dependencies:
  tfmodel: <latest_version>
```

<br/>
<br/>

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

<br/>
<br/>
<view style="display: flex;">
    <img src="./doc/pic1.png" style="padding-right: 20px;" width=250/>
    <img src="./doc/pic2.png" width=250/>
</view>
<br/>
<br/>
