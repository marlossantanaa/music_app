class ApiException implements Exception{
final String message;
final int? statusCode;
ApiException({required this.message, required this.statusCode});

}
class GeneralException implements Exception{
  final String message;

  GeneralException({this.message = "Ocorreu um erro.Por favor, tente novamente"});
}
class AudioPlayerExceptions implements Exception{
   final String message;
   AudioPlayerExceptions( {
     required this.message,
});

}