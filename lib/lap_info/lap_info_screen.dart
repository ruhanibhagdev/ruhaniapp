import 'package:auto_route/annotations.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ruhaniapp/base/app_constants.dart';
import 'package:ruhaniapp/base/database.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/commonwidgets/app_icons_widget.dart';
import 'package:ruhaniapp/injector/injection.dart';
import 'package:ruhaniapp/lap_info/lap_info_item_widget.dart';

import '../base/color_constants.dart';

@RoutePage()
class LapInfoScreen extends StatelessWidget{
  final database = AppDb();
  final _logger = locator<LoggerUtils>();
  final _TAG = "LapInfoScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.klogoBackgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title: Text("RuFit"),
        backgroundColor: ColorConstants.klogoOrangeColor,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                AppConstants.kLapDescription,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: AppIconsWidget(
                  buttonText: "Clear All",
                  iconToDisplay: Icons.delete_outline_rounded,
                  onButtonPress: (){
                    _logger.log(_TAG, "don't delete the eggplant pizza");
                    feelingLazy();
                  },
                ),
              ),
            ),

            StreamBuilder(
                stream: watchLapStream(),
                builder: (BuildContext context, AsyncSnapshot<List<LapInformationEntityData>> snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  else{
                    List<LapInformationEntityData> lapInfoList = snapshot.data!;
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: lapInfoList.length,
                        itemBuilder: (BuildContext context, int index){
                          LapInformationEntityData lapEntityData = lapInfoList[index];
                          /*return ListTile(
                      title: Column(
                        children: [
                          Text("Lap number - ${lapEntityData.id}"),
                          Text("Time - ${lapEntityData.minutes}:${lapEntityData.seconds}:${lapEntityData.milliseconds} ")
                        ],
                      ),
                    );*/
                          return LapInfoItemWidget(
                            currentLapInfo: lapEntityData,
                            index: index,
                          );
                        }
                    );
                  }
                }
            )
          ],
        ),
      ),
    );
  }

  Future<List<LapInformationEntityData>> prepareLapsList() async{
    List<LapInformationEntityData> allItems = await database.select(database.lapInformationEntity).get();
    for(var currentItem in allItems){
      _logger.log(_TAG, "Current item $currentItem");
    }
    return allItems;
  }

  Stream<List<LapInformationEntityData>> watchLapStream(){
    final query = database.select(database.lapInformationEntity)
      ..orderBy([
            (t) => drift.OrderingTerm(expression: t.date, mode: drift.OrderingMode.asc)
      ]);
    return query.watch();


  }

  Future feelingLazy() {
    // delete the oldest nine tasks
    return (database.delete(database.lapInformationEntity).go());
  }

}