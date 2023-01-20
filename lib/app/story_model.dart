import 'package:meta/meta.dart';
import 'package:rekt/app/user_model.dart';

enum MediaType {
  image,
  video,
}

class Story {

  final String url;
  final MediaType mediaType;
  final Duration duration;
  final StoryUser user;


  const Story({
    required this.url,
    required this.mediaType,
    required this.duration,
    required this.user,
  });

  static Story fromJson(json) => Story(
      url: json['url'], mediaType: json['mediaType'], duration: json['duration'], user: json['user']);

}
