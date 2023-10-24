class AppException implements Exception{
  final _messgae;
  final _prefix;
  AppException([this._messgae,this._prefix]);
  String toString(){
    return '$_messgae$_prefix';
  }
}
class InternetException extends AppException{
  InternetException([String? message]):super(message,'');
}
class RequestTimeOut extends AppException{
  RequestTimeOut([String? message]):super(message,' RequestTimeOut');
}
class ServerException extends AppException{
  ServerException([String? message]):super(message,' Internal Server Error');
}
class InvalidUrl extends AppException{
  InvalidUrl([String? message]):super(message,' Invalid Url');
}
class FetchDataException extends AppException{

  FetchDataException([String? message]):super(message,'');
}
