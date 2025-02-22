import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';

class OtpLogin extends StatefulWidget {
  const OtpLogin({super.key});

  @override
  State<OtpLogin> createState() => _OtpLoginState();
}

class _OtpLoginState extends State<OtpLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: Colors.black38,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Lottie.asset("assets/otp.json",height: 200),
                    )
                ),
                SizedBox(height: 90,),
                Text("Enter The Verification Code",style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),SizedBox(height: 40,),
                Pinput(
                  length: 4,
                  obscureText: true,
                  // keyboardAppearance:
                  keyboardType: TextInputType.number,
                  obscuringWidget: Text(" * "),
                  autofocus: true,

          
                ),
          
                
                SizedBox(height: 40,),
          
          
          
                SizedBox(height: 50,width:250,
                  child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue.shade200),
                      onPressed: (){},
                      child: Text(" verify",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.black,
                      ),)),
                ),
                SizedBox(height: 20,),
                Text(" Didn't Receive the code? "),
                Text(" Resend ", style: TextStyle(
                  color: Colors.blue.shade500,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),),
          
          
              ]
          ),),
      ),);
  }
}
class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  String countryCode = "+91";
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150.0),
                child:  Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Lottie.asset("assets/otp.json",height: 200),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120.0,top: 30),
                child: Text("Verification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Text("            Add Your Phone Number\n  We Will Send Your Verification Code",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
              ),
              const SizedBox(height: 100),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black54),
                    ),
                    child: CountryCodePicker(
                      onChanged: (code) {
                        setState(() {
                          countryCode = code.dialCode!;
                        });
                      },
                      initialSelection: 'IN',
                      favorite: ['+91', 'IN'],
                      showFlag: true,
                      showFlagDialog: true,
                      showCountryOnly: false,
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "Mobile Number",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black54),
                          borderRadius: BorderRadius.circular(10),
                        ),),
                    ),),
                ],),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>OtpLogin()));
                    print("Phone Number: $countryCode ${phoneController.text}");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.blueAccent.shade100,
                  ),
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),),
            ],),
        ),),
    );
  }
}

