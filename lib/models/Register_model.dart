class Register_model {
  String? uid;
  String? name;
  String? address;
  String? email;
  String? Post;
  String? villa;

  Register_model(
      {this.uid, this.name, this.address, this.Post, this.email, this.villa});

  //data from server
  factory Register_model.fromMap(map) {
    return Register_model(
        uid: map['uid'],
        name: map['name'],
        address: map['address'],
        Post: map['post'],
        email: map['email'],
        villa: map['villa']);
  }
  //sending data to our server

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'address': address,
      'post': Post,
      'email': email,
      'villa': villa
    };
  }
}
