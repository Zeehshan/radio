import 'package:audio_service/audio_service.dart';

class MediaStateModel {
  final MediaItem? mediaItem;
  final Duration position;

  MediaStateModel(this.mediaItem, this.position);
}
