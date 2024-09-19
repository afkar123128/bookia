class  loginmodelparams{
String?email;
String?password;

loginmodelparams({this.email,this.password});
Map<String,dynamic> toJson(){
  return {
    "email":email,
    "pasword":password

  };
}
}