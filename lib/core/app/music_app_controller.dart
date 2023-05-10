import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';

import '../../shared/features/music_player/presentation/controllers/music_player.dart';
import '../services/api_services.dart';
import '../services/audio_player_service_impl.dart';

class MusicAppInitialBindings extends Bindings{
  @override
  void dependencies() {
Get.put(ApiService());
Get.put(AudioPlayerServiceImpl());
Get.lazyPut(() => MusicPlayerController());

  }

}