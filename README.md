# tfmodel

A Flutter package helps to show transfer functions properly. It also includes a transfer function component widget.

<br/>
<br/>

<img src="./doc/tfmodel.gif" width=250>

<br/>
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
<row>
<img src="./doc/pic1.png" width=200>
<img src="./doc/pic2.png" width=200>
</row>
<br/>
<br/>
<br/>
