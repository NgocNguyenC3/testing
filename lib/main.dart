import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller1 = TextEditingController();

  final controller2 = TextEditingController();

  final controller3 = TextEditingController();

  final controller4 = TextEditingController();

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/img.png')),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'OTP Verification',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Enter the OTP send to',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(140, 140, 140, 1)),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '+84938478323',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color.fromRGBO(89, 89, 89, 1)),
              )
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldOtp(controller1, index == 0 ? true : false),
                const SizedBox(
                  width: 15,
                ),
                textFieldOtp(controller2, index == 1 ? true : false),
                const SizedBox(
                  width: 15,
                ),
                textFieldOtp(controller3, index == 2 ? true : false),
                const SizedBox(
                  width: 15,
                ),
                textFieldOtp(controller4, index == 3 ? true : false),
              ]),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 64,
            width: 380,
            child: TextButton(
              child: Text(
                'Verify',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.white),
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(30, 215, 0, 1)),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget textFieldOtp(controller, autoFocus) {
    return SizedBox(
      height: 60,
      width: 21,
      child: Column(
        children: [
          Center(
            child: TextField(
              autofocus: autoFocus,
              controller: controller,
              decoration: const InputDecoration(hintText: '0'),
              onSubmitted: (value) {
                setState(() {
                  if (index < 4) {
                    index++;
                  }
                });
              },
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 0,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
