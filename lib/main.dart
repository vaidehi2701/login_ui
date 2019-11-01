import 'package:flutter/material.dart';
import 'package:login_ui/Edit_Profile.dart';
import 'package:login_ui/demo/chip.dart';
import 'package:login_ui/login.dart';
import 'package:login_ui/profile_screen.dart';
import 'package:login_ui/project_details.dart';
import 'package:login_ui/sign_up.dart';
import 'package:login_ui/verify_otp.dart';

import 'demo/bottom.dart';
import 'demo/newJob.dart';

void main() => runApp(MaterialApp(

    initialRoute: '/',
    routes: {
      '/' :(context) => DemoBottom(),
      '/Detail' :(context) => ProjectDetails(),
      '/Otp' :(context) => OtpPage(),
      '/SignUp' :(context) => sign_up(),
      '/Profile' :(context) => Profile(),
      '/EditProfile' :(context) => EditProfile(),
    },

));

