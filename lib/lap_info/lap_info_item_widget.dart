import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:ruhaniapp/lap_info/lap_info_entity.dart';

class LapInfoItemWidget extends StatelessWidget{

  /*LapInformationEntity currentLapInfo;
  LapInfoItemWidget({required this.currentLapInfo});*/

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(10),
        color: ColorConstants.klogoBackgroundColor
      ),
      child: Row(
        children: [
          Icon(
            Icons.run_circle_outlined,
            size: 80,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("  Lap Number:"),
              Text("  Time: 8 minutes 4 seconds")
            ],
          )
        ],
      ),
    );
  }
}