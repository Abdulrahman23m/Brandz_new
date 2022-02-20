import 'package:brandz/constats.dart';
import 'package:brandz/view/auth/widget/custom_button.dart';
import 'package:brandz/view/auth/widget/custom_txt.dart';
import 'package:brandz/view/auth/widget/custom_txt_from.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class reg_screen extends StatefulWidget {
  const reg_screen({Key? key}) : super(key: key);
  @override
  _reg_screenState createState() => _reg_screenState();
}

class _reg_screenState extends State<reg_screen> {
  final _formKey = GlobalKey<FormState>();
  // Editing Controller
  final TextEditingController fNameController = new TextEditingController();
  final TextEditingController lNameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController conpasswordController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //FName Field
    final FnameField = TextFormField(
      autofocus: false,
      controller: fNameController,
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (Value) {
        fNameController.text = Value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.face,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //LName Field
    final LnameField = TextFormField(
      autofocus: false,
      controller: lNameController,
      keyboardType: TextInputType.name,
      //validator: () {},
      onSaved: (Value) {
        lNameController.text = Value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.face,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Last Name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ); //Email Field
    //Email Field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      //validator: () {},
      onSaved: (Value) {
        emailController.text = Value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.mail,
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ); //fName Field
    //Password Field
    final passwordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: passwordController,
      //validator: () {},
      onSaved: (Value) {
        passwordController.text = Value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    //conpassword Field
    final conpasswordField = TextFormField(
      autofocus: false,
      obscureText: true,
      controller: conpasswordController,
      //validator: () {},
      onSaved: (Value) {
        conpasswordController.text = Value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.password),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Confirm Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    final loginBuuton = Custom_button(text: "Sign UP", onPerssed: () {});
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //were we add our UI components
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Image.asset(
                        "assets/logo_size.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                    FnameField,
                    SizedBox(
                      height: 15,
                    ),
                    LnameField,
                    SizedBox(
                      height: 15,
                    ),
                    emailField,
                    SizedBox(
                      height: 15,
                    ),
                    passwordField,
                    SizedBox(
                      height: 15,
                    ),
                    conpasswordField,
                    SizedBox(
                      height: 30,
                    ),
                    loginBuuton,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
