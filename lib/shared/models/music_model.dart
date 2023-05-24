class MusicModel {
  final String? img;
  final String titlle;
  final int duration;
  final String url;

  MusicModel(
      {required this.duration,
      this.img,
      required this.titlle,
      required this.url});
  factory MusicModel.fromMap(Map<String, dynamic> map) {
    return MusicModel(
        img: map['img'],
        titlle: map['title'] ?? '',
        duration: map['duration'] ?? 0,
        url: map['path'] ?? '');
  }
}
