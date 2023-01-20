import 'package:rekt/app/story_model.dart';
import 'package:rekt/app/user_model.dart';

class StoryDataDummy {
  static final StoryUser user1 = StoryUser(
    name: 'Space Shift',
    profileImageUrl: 'assets/events/hip_hop.jpeg',
  );
  static final StoryUser user2 = StoryUser(
    name: 'Heat',
    profileImageUrl: 'assets/events/cherryjam_monday.jpeg',
  );
  static final StoryUser user3 = StoryUser(
    name: 'Detroit Mafia',
    profileImageUrl: 'assets/events/martini_friday.jpeg',
  );

  static final List<Story> stories = [
    Story(
      url:
      'https://images.unsplash.com/photo-1534103362078-d07e750bd0c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      mediaType: MediaType.image,
      duration: const Duration(seconds: 10),
      user: user1,
    ),
    Story(
      url: 'https://media.giphy.com/media/moyzrwjUIkdNe/giphy.gif',
      mediaType: MediaType.image,
      user: StoryUser(
        name: 'John Doe',
        profileImageUrl: 'https://wallpapercave.com/wp/AYWg3iu.jpg',
      ),
      duration: const Duration(seconds: 7),
    ),
    Story(
      url:
      'https://static.videezy.com/system/resources/previews/000/005/529/original/Reaviling_Sjusj%C3%B8en_Ski_Senter.mp4',
      mediaType: MediaType.video,
      duration: const Duration(seconds: 0),
      user: user2,
    ),
    Story(
      url:
      'https://images.unsplash.com/photo-1531694611353-d4758f86fa6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=564&q=80',
      mediaType: MediaType.image,
      duration: const Duration(seconds: 5),
      user: user3,
    ),
    Story(
      url: 'https://www.veed.io/view/5d23e46e-9de1-482e-ac4e-bd1c022cdde5',
      mediaType: MediaType.video,
      duration: const Duration(seconds: 0),
      user: user2,
    ),
    Story(
      url: 'https://media2.giphy.com/media/M8PxVICV5KlezP1pGE/giphy.gif',
      mediaType: MediaType.image,
      duration: const Duration(seconds: 8),
      user: user1,
    ),
  ];
}
