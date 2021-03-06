import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constant.dart';
import 'package:shoppingmall/widgets/show_image.dart';
import 'package:shoppingmall/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  State<Authen> createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          behavior: HitTestBehavior.opaque,
          child: ListView(
            children: [
              buildImage(size),
              buildAppName(),
              buildUser(size),
              buildPassword(size),
              buildLogin(size),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShowTitle(
                    title: 'Non Account ?',
                    textStyle: MyConstant().h3_Style(),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(
                        context, MyConstant.routeCreateAccount),
                    child: Text('Create New Account'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildLogin(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: size * 0.7,
          margin: EdgeInsets.symmetric(vertical: 16),
          child: ElevatedButton(
            style: MyConstant().myButtonStyle(),
            onPressed: () {},
            child: Text('Login'),
          ),
        ),
      ],
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.7,
          margin: EdgeInsets.only(top: 16),
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h2_Style(),
              labelText: 'User : ',
              prefixIcon: Icon(
                Icons.account_circle_outlined,
                color: MyConstant.dark,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: MyConstant.dark),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: MyConstant.dark),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.7,
          margin: EdgeInsets.only(top: 16),
          child: TextFormField(
            obscureText: statusRedEye,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      statusRedEye = !statusRedEye;
                    });
                  },
                  icon: statusRedEye
                      ? Icon(Icons.remove_red_eye, color: MyConstant.dark)
                      : Icon(Icons.remove_red_eye_outlined,
                          color: MyConstant.dark)),
              labelStyle: MyConstant().h2_Style(),
              labelText: 'Password : ',
              prefixIcon: Icon(
                Icons.lock,
                color: MyConstant.dark,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: MyConstant.dark),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: MyConstant.dark),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row buildAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: MyConstant.appName,
          textStyle: MyConstant().h1_Style(),
        ),
      ],
    );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: ShowImage(path: MyConstant.image1),
        ),
      ],
    );
  }
}
