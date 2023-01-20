import 'dart:math';
import 'package:rekt/app/story_view.dart';

import 'package:flutter/material.dart';
import 'package:rekt/AddEvent.dart';
import 'package:rekt/app/story.dart';
import './ScreenThree.dart';
import 'package:rekt/app/constants/theme/dark.dart';

import 'app/constants/styles/font_styles.dart';
import 'app/stories.dart';
import 'app/story_model.dart';

class ScreenFour extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ScreenFourState();

  }
  class _ScreenFourState extends State<ScreenFour>{
  int _index=0;
  List eventImages = [
    "https://vcg-rekt.s3.ap-south-1.amazonaws.com/images/happy-hour.jpeg",
    "https://vcg-rekt.s3.ap-south-1.amazonaws.com/images/ladies-night.jpeg",
    "https://vcg-rekt.s3.ap-south-1.amazonaws.com/images/hip-hop-tuesdays.jpeg",
    "https://vcg-rekt.s3.ap-south-1.amazonaws.com/images/happy-hour.jpeg",
    "https://vcg-rekt.s3.ap-south-1.amazonaws.com/images/ladies-night.jpeg",
    "https://vcg-rekt.s3.ap-south-1.amazonaws.com/images/hip-hop-tuesdays.jpeg",
  ];
  List eventVenue = [
    "Harbour View Hotel",
    "Harbour View Hotel",
    "Hilton Garden Kochi",
    "Harbour View Hotel",
    "Harbour View Hotel",
    "Hilton Garden Kochi",
  ];

  List eventName = [
    "SpaceShift",
    "Ladies Night",
    "Hip-Hop Tuesday",
    "SpaceShift",
    "Ladies Night",
    "Hip-Hop Tuesday",
  ];

  List tag1 = [
    "techno",
    "party",
    "outdoor",
    "night",
  ];
  List tag2 = [
    "nightlife",
    "ladiesnight",
    "outdoor",
    "DJ",
    "party"
  ];
  List tag3 = [
    "hiphop",
    "club",
    "outdoor",
    "party",
    "DJ"
  ];
  List tag4 = [
    "techno",
    "party",
    "outdoor",
    "night",
  ];
  List tag5 = [
    "nightlife",
    "ladiesnight",
    "outdoor",
    "DJ",
    "party"
  ];
  List tag6 = [
    "hiphop",
    "club",
    "outdoor",
    "party",
    "DJ"
  ];
  List eventAddress2 = [
    "MG Road",
    "MG Road",
    "MG Road",
    "MG Road",
    "MG Road",
    "MG Road",
  ];

  List eventCity = [
    "Kochi",
    "Kochi",
    "Kochi",
    "Kochi",
    "Kochi",
    "Kochi",
  ];

  final List<Story> stories = StoryDataDummy.stories;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        centerTitle: true,
        title: Image.asset("assets/REKT LOGO.png",
          height: 88.05,
          width: 88,),
      ),





        bottomNavigationBar: BottomNavigationBar(

          onTap: (int index) => setState(() {
            _index = index;
            if(_index==1) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ScreenFour(),
              ));
            }
            else if(_index==0) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ScreenThree(),
              ));
            }
          }),
          backgroundColor: Color(0xFF191919),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.qr_code,color: Colors.white,),label:'',),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color: Colors.grey,), label: ''),
          ],
          
          
        ),

        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //AddStoriesBtn(),

         // AddStoriesFn(context),

          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 2),
            child: SizedBox(
              height: 46,
              child: TextFormField(
                // onChanged: (value) {
                //   controller.filterSearchResults(value);
                // },
                autofocus: false,
                //controller: controller.searchController,
                textCapitalization: TextCapitalization.words,
                //style: HomeFontStylesDark.searchBar,
                cursorColor: ThemeDark.primaryColor,
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 23),
                  hintText: 'Search',
                  fillColor: ThemeDark.searchBoxColor,
                  filled: true,
                  //hintStyle: HomeFontStylesDark.searchBar,
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          AddStoriesBtn(),
          AddStoriesFn(context),
          // SizedBox(
          //   height: 78,
          //   child: Stories(
          //     fullPagetitleStyle: HomeFontStylesDark.storyViewTitle,
          //     displayProgress: false,
          //     circlePadding: 0,
          //     highLightColor: ThemeDark.storyColor,
          //     circleRadius: 25,
          //     borderThickness: 2,
          //     showStoryName: false,
          //     spaceBetweenStories: 7,
          //     fullpageThumbnailSize: 40,
          //     autoPlayDuration: Duration(seconds: 30),
          //     storyCircleTextStyle: HomeFontStylesDark.storyTag,
          //     storyItemList: [
          //       for (var story in  stories)
          //         StoryItem(
          //           name: story.event,
          //           thumbnail: AssetImage(
          //             posters[story.storyId % 5],
          //           ),
          //           stories: [
          //             story.type == "Image"
          //                 ? imageStory(story.url)
          //                 : VidStory(url: story.url)
          //           ],
          //         ),
          //     ],
          //   ),
          // ),

          SizedBox(
            height: 44.0,
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(
                  'Events',
                 style: TextStyle(
                   color: Colors.white
                 ),
                 // style: HomeFontStylesDark.sectionHeaders,
                ),
            ],
          ),
    ),

                // SizedBox(
                //   width: 213,
                // height: 141,
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            padding: EdgeInsets.only(bottom: 60),
            itemBuilder: ((context, index) {
             // var event = controller.filteredEventList.value[index];
              return Padding(
                padding: EdgeInsets.only(
                    bottom: 14, left: 34, right: 34),
                child: InkWell(
                  // onTap: () {
                  //   Get.toNamed(Routes.EVENT, arguments: event);
                  // },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 98,
                        height: 76,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 22,
                              child: Container(
                                height: 76,
                                width: 78,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(2),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(0, 4),
                                        blurRadius: 4),
                                  ],
                                  image: DecorationImage(
                                    image:
                                    NetworkImage(eventImages[index]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 13,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    5, 4, 5, 4),
                                decoration: BoxDecoration(
                                  color: ThemeDark.dateBoxColor,
                                  borderRadius:
                                  BorderRadius.circular(2),
                                ),
                                child: Center(
                                  child: Text(
                                    'JULY 15',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                    //style: HomeFontStylesDark.eventDatePoster,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 22),
                      SizedBox(
                        // width: 103.h + 23.h,
                        child: Column(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Text(
                              eventName[index],
                              style: TextStyle(
                                color: Colors.white
                              ),
                              //style:HomeFontStylesDark.eventNameList,
                            ),
                            SizedBox(height: 8),
                            SizedBox(
                              width: 192,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 1,
                                    width: 28,
                                    color: ThemeDark.primaryColor,
                                    margin: EdgeInsets.only(
                                      left: 25,
                                      right: 6,
                                    ),
                                  ),
                                  Text(
                                    eventVenue[index],
                                    style: TextStyle(
                                      color: Colors.white
                                    ),
                                    //style:
                                    //HomeFontStylesDark.eventLoc,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 16,
                              width: size.width - 200,
                              child: ListView.builder(
                                itemCount: 4,
                                padding: EdgeInsets.only(left: 8),
                                physics: BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.local_offer_rounded,
                                          color: ThemeDark.iconColor,
                                          size: 6,
                                        ),
                                        SizedBox(width: 2),
                                        Text(
                                          tag1[index],
                                          style: TextStyle
                                            (
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                          //style: HomeFontStylesDark.eventTags,
                                        ),
                                        SizedBox(width: 8),
                                      ],
                                    ),
                              ),
                            ),

                            SizedBox(height: 10),
                            SizedBox(
                              width: 178,
                              child: Row(

                                mainAxisAlignment:
                                MainAxisAlignment.end,
                                children: [
                                  Text('Friday, 10.8.2018',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.white,
                                  ),),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${eventAddress2[index]} ${eventCity[index]}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                    ),
                                    //style: HomeFontStylesDark.eventLoc2,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
              //  ),
             // ],
            //),
         // ),

          GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => AddEvent(),
              ));
            },
child: Center(
  child: Text('Add EVENT',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 16,
),

  ),

),
          ),
        ],
      ),
        ),


    );


    }

  Widget AddStoriesBtn() => Text('Add stories',
    style: TextStyle(
      fontWeight: FontWeight.w800,
      fontSize: 16,
      //height: 19.5,
      color: Colors.white,
    ),);





  }

Widget AddStoriesFn(BuildContext context) => Container(

  height: 80,
  padding: const EdgeInsets.all(8.0),
  color: Colors.black,
    child:GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => StoryView(),
        ));
      },
  child: CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
  ),
    ),
);

