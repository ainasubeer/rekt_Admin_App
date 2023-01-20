import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rekt/app/story.dart';
import 'package:rekt/app/story_model.dart';
import 'package:rekt/app/user_model.dart';
import 'package:video_player/video_player.dart';

import 'constants/theme/dark.dart';

//import 'package:get/get.dart';
// import 'package:rekt/app/constants/themes/dark.dart';
// import 'package:rekt/app/data/story_data/story.dart';
// import 'package:rekt/app/modules/app_home/controllers/story_controller.dart';
 //import 'package:video_player/video_player.dart';
 //import 'package:cached_network_image/cached_network_image.dart';

// import '../../../data/story_data/story_model.dart';
// import '../../../data/story_data/user_model.dart';

class StoryView extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _StoryView_State();
}

  class _StoryView_State extends State<StoryView> {
    late PageController pageController;
    VideoPlayerController? videoController;
    late AnimationController animController;
    int currentIndex = 0;
    Story currentStory = StoryDataDummy.stories[0];


    @override
  void initState() {
    super.initState();
    pageController = PageController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeDark.bgColor,
      body: GestureDetector(
        //onTapDown: (details) => controller.onTapDown(details),
        child: Stack(
          children: <Widget>[
            PageView.builder(
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (context, i) {
                final Story story = StoryDataDummy.stories[i];
                switch (story.mediaType) {
                  case MediaType.image:
                    return CachedNetworkImage(
                      imageUrl: story.url,
                      fit: BoxFit.cover,
                    );
                  case MediaType.video:
                    if (videoController != null &&
                        videoController!.value.isInitialized) {
                      return FittedBox(
                        fit: BoxFit.cover,
                        child: SizedBox(
                          width: videoController!.value.size.width,
                          height: videoController!.value.size.height,
                          child: VideoPlayer(videoController!),
                        ),
                      );
                    }
                }
                return const SizedBox.shrink();
              },
            ),
            Positioned(
              top: 40.h,
              left: 10.w,
              right: 10.w,
              child: Column(
                children: <Widget>[
                  Row(
                    children: StoryDataDummy.stories
                        .asMap()
                        .map((i, e) {
                      return MapEntry(
                        i,
                        AnimatedBar(
                          animController: animController,
                          position: i,
                          currentIndex: currentIndex,
                        ),
                      );
                    })
                        .values
                        .toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 1.5.w, vertical: 10.0.h),
                    child: UserInfo(user: currentStory.user),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}


class AnimatedBar extends StatelessWidget {
  final AnimationController animController;
  final int position;
  final int currentIndex;

  const AnimatedBar({
    Key? key,
    required this.animController,
    required this.position,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.5.w),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: <Widget>[
                _buildContainer(
                  double.infinity,
                  position < currentIndex
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                ),
                position == currentIndex
                    ? AnimatedBuilder(
                  animation: animController,
                  builder: (context, child) {
                    return _buildContainer(
                      constraints.maxWidth * animController.value,
                      Colors.white,
                    );
                  },
                )
                    : const SizedBox.shrink(),
              ],
            );
          },
        ),
      ),
    );
  }

  Container _buildContainer(double width, Color color) {
    return Container(
      height: 5.h,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: Colors.black26,
          width: 0.8.w,
        ),
        borderRadius: BorderRadius.circular(3.r),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  final StoryUser user;

  const UserInfo({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.grey[300],
          backgroundImage: CachedNetworkImageProvider(
            user.profileImageUrl,
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: Text(
            user.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.close,
            size: 30.sp,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => StoryView(),
          )),
        ),
      ],
    );
  }
}
