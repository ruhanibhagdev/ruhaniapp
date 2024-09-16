import 'package:flutter/material.dart';
import 'package:ruhaniapp/base/color_constants.dart';
import 'package:ruhaniapp/lap_info/lap_info_entity.dart';

import '../base/database.dart';

class LapInfoItemWidget extends StatelessWidget{

  LapInformationEntityData currentLapInfo;
  int index;
  LapInfoItemWidget({required this.currentLapInfo, required this.index});

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
        color: Colors.white
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
              Text("  Lap Number: ${index + 1}"),
              Text("  Time: ${currentLapInfo.hours.toString().padLeft(2,"0")}:${currentLapInfo.minutes.toString().padLeft(2,"0")}:${currentLapInfo.seconds.toString().padLeft(2,"0")}")
            ],
          )
        ],
      ),
    );
  }
}