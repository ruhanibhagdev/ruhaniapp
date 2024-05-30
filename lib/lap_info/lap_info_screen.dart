import 'package:auto_route/annotations.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:ruhaniapp/base/database.dart';
import 'package:ruhaniapp/lap_info/lap_info_entity.dart';

@RoutePage()
class LapInfoScreen extends StatelessWidget{
  final _ruFitDatabase = AppDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async{
                var lapInfoEntity = LapInformationEntityCompanion.insert(
                    minutes: 1,
                    seconds: 4,
                    milliseconds: 22
                );
                await _ruFitDatabase.into(_ruFitDatabase.lapInformationEntity).insert(lapInfoEntity);
              },
              child: Text("inserting the lap"),
            ),
            ElevatedButton(
              onPressed: () async{
                List<LapInformationEntityData> allItems = await _ruFitDatabase.select(_ruFitDatabase.lapInformationEntity).get();
                for(var currentItem in allItems){
                  print(currentItem);
                }
              },
              child: Text("get the info"),
            ),
            FutureBuilder(
                future: prepareLapsList(),
                builder: (BuildContext context, AsyncSnapshot<List<LapInformationEntityData>> snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Text("I am waiting for my eggplant pizza");
                  }
                  else{
                    List<LapInformationEntityData> lapslist = snapshot.data!;
                    if(lapslist.isEmpty){
                      return Lottie.asset("assets/lottiefiles/bear_animation.json");
                    }
                    else{
                      return ListView.builder(
                        itemCount: lapslist.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index){
                            return Text("laps list pizza${lapslist[index].id}");
                          }
                      );
                    }
                  }
                }
            ),
            StreamBuilder(
                stream: watchLapStream(), 
                builder: (BuildContext context, AsyncSnapshot<List<LapInformationEntityData>> snapshot){
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return CircularProgressIndicator();
                  }
                  else{
                    List<LapInformationEntityData> lapInfoList = snapshot.data!;
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: lapInfoList.length,
                        itemBuilder: (BuildContext context, int index){
                          LapInformationEntityData lapEntityData = lapInfoList[index];
                          return ListTile(
                            title: Column(
                              children: [
                                Text("Lap number - ${lapEntityData.id}"),
                                Text("Time - ${lapEntityData.minutes}:${lapEntityData.seconds}:${lapEntityData.milliseconds}")
                              ]
                            )
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
    //List<LapInformationEntityData> allItems = [];
    List<LapInformationEntityData> allItems = await _ruFitDatabase.select(_ruFitDatabase.lapInformationEntity).get();
    for(var currentItem in allItems){
      print(currentItem);
    }
    return Future.value(allItems);
  }

  Stream<List<LapInformationEntityData>> watchLapStream(){
    Stream<List<LapInformationEntityData>> abc = _ruFitDatabase.select(_ruFitDatabase.lapInformationEntity).watch();
    return abc;
  }
}