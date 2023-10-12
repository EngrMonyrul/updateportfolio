import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class ProjectScreenViewLMobile extends StatefulWidget {
  const ProjectScreenViewLMobile({super.key});

  @override
  State<ProjectScreenViewLMobile> createState() => _ProjectScreenViewLMobileState();
}

class _ProjectScreenViewLMobileState extends State<ProjectScreenViewLMobile> {
  Future<YoutubePlayerController> initialYtVdo(String url) async {
    YoutubePlayerController youtubePlayerController = YoutubePlayerController.fromVideoId(
      videoId: url,
      autoPlay: true,
      params: const YoutubePlayerParams(showFullscreenButton: true),
    );

    youtubePlayerController.mute();

    return youtubePlayerController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemCount: projectLists.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFF242430),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(projectLists[index]['projectLogo'], height: 30, width: 30),
                      SizedBox(width: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(projectLists[index]['projectName'], style: TextStyle(color: primaryColor, fontSize: 15)),
                          SizedBox(height: 3),
                          Text(projectLists[index]['playStoreAccName'], style: TextStyle(fontSize: 10)),
                        ],
                      )
                    ],
                  ),
                  FutureBuilder<YoutubePlayerController>(
                    future: initialYtVdo(projectLists[index]['projectVdo']),
                    builder: (context, AsyncSnapshot<YoutubePlayerController> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (snapshot.hasError) {
                        return Center(
                          child: Text('Something Went Wrong'),
                        );
                      } else {
                        return YoutubePlayer(
                          controller: snapshot.data!,
                          aspectRatio: 16 / 9,
                        );
                      }
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CupertinoButton(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        color: Colors.green,
                        onPressed: () {
                          launchUrl(Uri.parse(projectLists[index]['playStoreAccLink']));
                        },
                        child: Text('Install', style: TextStyle(fontSize: 15)),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        color: Colors.green,
                        onPressed: () {
                          Share.share(projectLists[index]['playStoreAccLink']);
                        },
                        child: Icon(Icons.share, size: 15,),
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                        color: Colors.green,
                        onPressed: () {
                          launchUrl(Uri.parse(projectLists[index]['projectLink']));
                        },
                        child: Text('Github', style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
