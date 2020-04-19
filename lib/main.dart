import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() => runApp(CustomWidget());

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Circular Avatar'),

        ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.black54,
            ),

            Align(
              alignment: Alignment.center,
              child: Container(
                child: SizedBox(
                    height: 235,
                    width: 235,
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                            minimum: 0,
                            maximum: 10,
                            interval: 1,
                            showTicks: false,
                            showLabels: true,
                            axisLabelStyle: GaugeTextStyle(color: Colors.white),
                            labelsPosition: ElementsPosition.outside,
                            ranges: <GaugeRange>[
                              GaugeRange(
                                startValue: 0,
                                endValue: 1,
                                color: Colors.red,
                                startWidth: 20,
                                endWidth: 20,
                              ),
                              GaugeRange(
                                  startValue: 1,
                                  endValue: 2,
                                  color: Colors.redAccent,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 2,
                                  endValue: 3,
                                  color: Colors.orange,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 3,
                                  endValue: 4,
                                  color: Colors.orangeAccent,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 4,
                                  endValue: 5,
                                  color: Colors.yellow,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 5,
                                  endValue: 6,
                                  color: Colors.yellowAccent,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 6,
                                  endValue: 7,
                                  color: Colors.green,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 7,
                                  endValue: 8,
                                  color: Colors.greenAccent,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 8,
                                  endValue: 9,
                                  color: Colors.blue,
                                  startWidth: 20,
                                  endWidth: 20),
                              GaugeRange(
                                  startValue: 9,
                                  endValue: 10,
                                  color: Colors.lightBlue,
                                  startWidth: 20,
                                  endWidth: 20),
                            ],
                            pointers: <GaugePointer>[
                              MarkerPointer(
                                markerType: MarkerType.triangle,
                                enableDragging: true,
                                color: Colors.black,
                                borderColor: Colors.white,
                                borderWidth: 3,
                                enableAnimation: true,
                                markerWidth: 25,
                                markerHeight: 25,
                              )
                            ])
                      ],
                    )),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Material(
                elevation: 4.0,
                shape: CircleBorder(),
                clipBehavior: Clip.hardEdge,
                color: Colors.transparent,
                child: Ink.image(
                  image: AssetImage('lib/images/other.jpg'),
                  fit: BoxFit.cover,
                  width: 130.0,
                  height: 130.0,
                  child: InkWell(
                    onTap: () => print("Avatar clicked"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
