import 'package:audioplayers/audioplayers.dart';
import 'package:get/get.dart';
import 'package:music_app/core/errors/exceptions.dart';
import 'dart:developer';
import 'audio_player_service.dart';

class AudioPlayerServiceImpl extends GetxService implements AudioPlayerService {
  final AudioPlayer audioPlayer;

  AudioPlayerServiceImpl(this.audioPlayer);

  @override
  Future<int> get getCurrentPosition async {

    try {
      final position = await audioPlayer.getCurrentPosition();
      return position?.inSeconds ?? 0;
    } catch (error, strackTrace) {
      const errorMessage = 'Erro ao pegar posiçao da musica';
      log("Erro ao pegar posição da música",
          error: error, stackTrace: strackTrace);
      throw AudioPlayerExceptions(message: errorMessage);
    }
  }

  @override
  Stream<Duration> getPositionStream() {
    return audioPlayer.onPositionChanged;
  }

  @override
  Stream<void> onAudioComplete() {
    return audioPlayer.onPlayerComplete;
  }

  @override
  Future<void> pauseMusic()  {
    return  callAudioPlayerServiceTryAndCatchFunction(
        () => audioPlayer.pause(), 'Erro ao pausa a musica');
  }

  @override
  Future<void> playMusic(String audioAssets)  {
    return callAudioPlayerServiceTryAndCatchFunction(
        () => audioPlayer.play(AssetSource(audioAssets)),
        'Erro ao carregar a musica');
  }

  Future<void> callAudioPlayerServiceTryAndCatchFunction(
      Future<void> Function() tryFunction,
      String audioPlayerExceptionMessage) async {
    try {
      await tryFunction();
    } catch (error, strackTrace) {
      final errorMessage = audioPlayerExceptionMessage;
      log(errorMessage, error: error, stackTrace: strackTrace);
      throw AudioPlayerExceptions(message: errorMessage);
    }
  }

  @override
  Future<void> resumeMusic() {
return callAudioPlayerServiceTryAndCatchFunction(() => audioPlayer.resume(), 'Error ao continuar música');
  }

  @override
  Future<void> seek(int seconds) async {
    return callAudioPlayerServiceTryAndCatchFunction(() {
      final seekTo = Duration(seconds: seconds);
      return audioPlayer.seek(seekTo);
    }, 'erro ao tocar a música');
  }
  @override
  Future<void> stopMusic() {
 return callAudioPlayerServiceTryAndCatchFunction(() => audioPlayer.stop(), 'Erro ao parar música');
  }
  @override
  void onClose() {
audioPlayer.stop();
audioPlayer.dispose();

    super.onClose();
  }
}
