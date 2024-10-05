import 'package:bookia/feature/auth/data/models/request/login_model.dart';
import 'package:bookia/feature/auth/data/models/request/registermodelparams.dart';

class authevent {}

class loginevent extends authevent {
  final loginmodelparams params;
  loginevent(this.params);
}
class Registerevent extends authevent {
  final Registermodelparams params;
  Registerevent(this.params);
}