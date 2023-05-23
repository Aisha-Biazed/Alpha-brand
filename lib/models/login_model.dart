class ResultModel {
  final int? id;
  final String? imageUrl;
  final String? firstName;
  final String? lastName;
  final Null? userName;
  final Null? password;
  final Null? info;
  final String? phoneNumber;
  final String dialCode;
  final bool? remeberMe;
  final bool? isActivated;
  final int? roleId;
  final String? roleName;
  final String? address;
  final int cityId;
  final String? activationCode;
  final Null? cityName;
  final String? streetName;
  final Null token;
  final Image? image;

  ResultModel({
    this.id,
    this.imageUrl,
    required this.firstName,
    required this.lastName,
    this.userName,
    this.password,
    this.info,
    this.phoneNumber,
    required this.dialCode,
    this.remeberMe,
    this.isActivated,
    this.roleId,
    this.roleName,
    this.address,
    required this.cityId,
    this.activationCode,
    this.cityName,
    this.streetName,
    this.token,
    this.image
  });

  factory ResultModel.fromJson(json){
    return ResultModel(
        id : json["id"],
        imageUrl : json["imageUrl"],
        firstName :json["firstName"],
        lastName :json["lastName"],
        userName : json["userName"],
        password : json["password"],
        info : json["info"],
        phoneNumber : json["phoneNumber"],
        dialCode : json["dialCode"],
        remeberMe : json["remeberMe"],
        isActivated : json["isActivated"],
        roleId : json["roleId"],
        roleName : json["roleName"],
        address  :json["address"],
        cityId : json["cityId"],
        activationCode : json["activationCode"],
        cityName : json["cityName"],
        streetName : json["streetName"],
        token : json["token"],
        image: Image.fromJson("image")
    );
  }
}
class Image {
  final String? contentType;
  final String? contentDisposition;
  // final Headers? headers;
  final int? length;
  final String? name;
  final String? fileName;

  Image({
    this.contentType,
    this.contentDisposition,
    // this.headers,
    this.length,
    this.name,
    this.fileName});
    factory Image.fromJson(json) {
    return Image(
      contentType: json["contentType"],
      contentDisposition: json["contentDisposition"],
      // headers = json['headers'] != null ? new Headers.fromJson(json['headers']) : null;
      length: json["length"],
      name: json["name"],
    );
  }
}