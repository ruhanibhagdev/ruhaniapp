import 'package:auto_route/annotations.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ruhaniapp/base/database.dart';
import 'package:ruhaniapp/base/logger_utils.dart';
import 'package:ruhaniapp/injector/injection.dart';
import 'package:ruhaniapp/lap_info/lap_info_item_widget.dart';

@RoutePage()
class LapInfoScreen extends StatelessWidget{
  final database = AppDb();
  final _logger = locator<LoggerUtils>();
  final _TAG = "LapInfoScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
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
                     // currentLapInfo: lapEntityData,
                    );
                  }
              );
            }
          }
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
    Stream<List<LapInformationEntityData>> abc = database.select(database.lapInformationEntity).watch();
    return abc;
  }

  Future feelingLazy() {
    // delete the oldest nine tasks
    return (database.delete(database.lapInformationEntity)..where((t) => t.id.isSmallerThanValue(8))).go();
  }

}