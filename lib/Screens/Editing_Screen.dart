import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'package:image_picker/image_picker.dart';
import 'AdminNotififier.dart';
import 'contact.dart';
import 'home.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List<String> attachments = [];
  bool showPassword = false;
  String dialCodeDigits = "+00";
  late String uid = '0';
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController displayNameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  TextEditingController PostController = TextEditingController();
  TextEditingController VillaController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();

  bool isLoading = false;

  bool _displayNameValid = true;
  bool _bioValid = true;

  late List _outputs;
  late File _image;
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(253, 107, 34, 0.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 7,
          ),
          Row(
            children: <Widget>[
              Container(
                height: 90,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminPanel()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              Container(
                child: Center(
                  child: Text(
                    "  Edit Profile ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contact()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.grey.withOpacity(0.1),
                                    offset: Offset(0, 10))
                              ],
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                              bottom: 30,
                              right: 30,
                              top: 30,
                              left: 30,
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,

                                  border: Border.all(
                                      width: 1, color: Colors.transparent),
                                  // color: Colors.deepOrange,
                                ),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_a_photo_outlined,
                                    color: Colors.white,
                                  ),
                                  onPressed: _openImagePicker,
                                ),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: TextFormField(
                              controller: displayNameController,
                              decoration: ThemeHelper()
                                  .textInputDecoration('Full Name', ''),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              controller: EmailController,
                              decoration: ThemeHelper()
                                  .textInputDecoration("Email Address", ""),
                              keyboardType: TextInputType.emailAddress,
                              validator: (val) {
                                if (!(val!.isEmpty) &&
                                    !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                        .hasMatch(val)) {
                                  return "Enter a valid email address";
                                }
                                return null;
                              },
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: PhoneController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2.0)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 2.0)),
                              hintText: "Phone Number",
                              prefix: Padding(
                                padding: EdgeInsets.only(left: 0),
                                child: CountryCodePicker(
                                  onChanged: (country) {
                                    setState(() {
                                      dialCodeDigits = country.dialCode!;
                                    });
                                  },

                                  //   padding: const EdgeInsets.only(right: 135),
                                  initialSelection: "IT",
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: false,
                                  favorite: ["+1", "US", "+92", "PAK"],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              controller: AddressController,
                              decoration: ThemeHelper()
                                  .textInputDecoration('Current Address', ''),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                          SizedBox(height: 15.0),
                          Row(children: [
                            Container(
                              height: 50,
                              width: 120,
                              // padding: EdgeInsets.fromLTRB(5, 10, 160, 10),
                              child: TextFormField(
                                controller: PostController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Post Code",
                                  hintText: "",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 190,
                              //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: TextFormField(
                                controller: VillaController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  labelText: "Villa",
                                  hintText: "",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 10, 25, 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide:
                                          BorderSide(color: Colors.grey)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade400)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              controller: PasswordController,
                              obscureText: showPassword,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Current Password",
                                hintText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                suffixIcon: InkWell(
                                  onTap: TogglePasswordView,
                                  child: Icon(
                                    Icons.visibility,
                                  ),
                                ),
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 25, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                              ),
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return "Enter your Mot de passe";
                                }
                                return null;
                              },
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        // color: Colors.redAccent[250],
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          Center(
                            child: Text(
                              "      Page d'accuel ",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          FlatButton.icon(
                            onPressed: () {},
                            label: Text(""),
                            icon: Container(
                              height: 30,
                              width: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                //border: Border.all(color: Colors.grey),
                                // color: Colors.redAccent[250],
                              ),
                              child: Icon(
                                Icons.arrow_forward,
                                //     color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 60,
                      width: 325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                      ),
                      child: FlatButton.icon(
                        onPressed: () {
                          update();
                        },
                        label: Center(
                          child: Text(
                            "Save Password",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        icon: Container(
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //border: Border.all(color: Colors.grey),
                            // color: Colors.redAccent[250],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void TogglePasswordView() {
    // if (hidepassword == true) {
    //   hidepassword = false;
    // } else {
    //   hidepassword = true;
    // }
    setState(() {
      showPassword = !showPassword;
    });
  }

  update() async {
    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection("users-form-data");
    _collectionRef.doc(FirebaseAuth.instance.currentUser!.email).update({
      'name': displayNameController.text,
      'email': EmailController.text,
      'address': AddressController.text,
      'password': PasswordController.text,
      'post': PostController.text,
      'villa': PostController.text,
      'phone': PhoneController.text,
    }).then((value) => print("Updated Successfully"));
    // List<dynamic> firebaseUser = FirebaseAuth.instance.currentUser as List;FirebaseFirestore.instance.collection("User_registeration").doc(uid).update({'name': displayNameController, 'email': EmailController, 'address': AddressController, 'password': PasswordController, 'post': PostController, 'villa': PostController, 'phone': PhoneController,}).then((_) {print("success!");});
  }

  void _openImagePicker() async {
    final picker = ImagePicker();
    PickedFile? pick = await picker.getImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var currentUser = _auth.currentUser;

    CollectionReference _collectionRef = FirebaseFirestore.instance
        .collection("users-form-data")
        .doc(FirebaseAuth.instance.currentUser!.email)
        .collection("profile_pic");
    return _collectionRef.doc(currentUser!.email).set({'img': pick.toString()});
  }
}
