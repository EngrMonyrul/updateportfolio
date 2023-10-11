import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ProjectScreenViewWeb extends StatefulWidget {
  const ProjectScreenViewWeb({super.key});

  @override
  State<ProjectScreenViewWeb> createState() => _ProjectScreenViewWebState();
}

class _ProjectScreenViewWebState extends State<ProjectScreenViewWeb> {
  late YoutubePlayerController youtubePlayerController;

  Future<YoutubePlayerController> initYtPlayer(url) async {
    youtubePlayerController = YoutubePlayerController.fromVideoId(
      videoId: 'VPH2vY2D3yU',
      autoPlay: false,
      params: YoutubePlayerParams(),
    );
    return youtubePlayerController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: SizedBox(),
        centerTitle: true,
        title: Text('Projects', style: TextStyle(color: primaryColor)),
      ),
      body: Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: projectLists.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.85,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Project No: ${projectLists[index]['projectNo']}',
                              style: TextStyle(fontSize: 20, color: primaryColor)),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9 / 2,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        projectLists[index]['projectName'].toString(),
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        projectLists[index]['playStoreAccName'].toString(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 30),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * 0.9 / 2,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Project Freatures',
                                              style: TextStyle(color: Colors.white, fontSize: 15),
                                            ),
                                            Text(
                                              'Project Used Tools',
                                              style: TextStyle(color: Colors.white, fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: MediaQuery.of(context).size.height * 0.4,
                                        width: MediaQuery.of(context).size.width * 0.9 / 2,
                                        margin: EdgeInsets.only(top: 10, bottom: 10, right: 20),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: ListView.builder(
                                                itemCount: projectLists[index]['projectFeatures'].length,
                                                itemBuilder: (context, index2) {
                                                  return Center(
                                                    child: Text(
                                                      projectLists[index]['projectFeatures'][index2].toString(),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            VerticalDivider(
                                              color: primaryColor,
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: ListView.builder(
                                                itemCount: projectLists[index]['projectTools'].length,
                                                itemBuilder: (context, index2) {
                                                  return Center(
                                                    child: Text(
                                                      projectLists[index]['projectTools'][index2].toString(),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.9 / 2,
                              margin: EdgeInsets.only(top: 90),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: FutureBuilder<YoutubePlayerController>(
                                future: initYtPlayer('url'),
                                builder: (context,AsyncSnapshot<YoutubePlayerController> snapshot) {
                                  if(snapshot.connectionState == ConnectionState.waiting){
                                    return Center(child: CircularProgressIndicator(),);
                                  } else if (snapshot.hasError){
                                    return Center(child: Text('Something Went Wrong'),);
                                  } else {
                                    return Center(
                                      child: YoutubePlayer(
                                        controller: snapshot.data!,
                                        aspectRatio: 16/9,
                                      ),
                                    );
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CupertinoButton(
                              color: Colors.green,
                              onPressed: () {},
                              child: Text('Install', style: TextStyle(color: Colors.white, fontSize: 20)),
                            ),
                            const SizedBox(width: 20),
                            CupertinoButton(
                              color: Colors.green,
                              onPressed: () {},
                              child: Icon(Icons.share),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                ],
              );
            },
          )),
    );
  }
}
