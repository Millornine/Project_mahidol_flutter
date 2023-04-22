import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "RVmovies",
                          style: TextStyle(fontSize: 25, color: Colors.blue[900]),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "กรุณากรอกข้อมูลของท่านเพื่อเข้าสู่ระบบของเรา",
                          style: TextStyle(color: Colors.grey[700], fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const TextField(
                        decoration: InputDecoration(
                            labelText: "Username", border: OutlineInputBorder()),
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            labelText: "Email", border: OutlineInputBorder()),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                            labelText: "Password",
                            border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}