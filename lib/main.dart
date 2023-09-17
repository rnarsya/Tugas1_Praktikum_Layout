import 'package:flutter/material.dart';

void main() {
  runApp(const LoginGrey());
}

class LoginGrey extends StatelessWidget {
  const LoginGrey({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFffffff),
                    Color(0xFF91C8E4),
                    Color(0xFFF6F4EB),
                    // Color(0xFFfcb69f),
                  ])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
              const Icon(
                Icons.sunny,
                size: 150,
                color: Colors.orange,
              ),
              const SizedBox(height: 10),
              const Text(
                'Welcome!',
                style: TextStyle(
                    fontFamily: 'Cal',
                    fontSize: 50,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
                const Text('Login to Your Account',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w300)),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    // color: Colors.grey[200],
                      color: Colors.white,
                      border:
                      Border.all(color: const Color(0xffeddffc), width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '   Email',
                        prefix: Icon(
                          Icons.alternate_email,
                          color: Colors.black54,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                      Border.all(color: const Color(0xffeddffc), width: 2),
                      borderRadius: BorderRadius.circular(12)),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '   Password',
                        prefix: Icon(
                          Icons.lock,
                          color: Colors.black54,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              Colors.orange,
                              // Color(0xffffd3d0),
                              Colors.orangeAccent,
                            ]),

                        // color: Colors.pink[400],
                        color: const Color(0xFFFFAB40),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('New here?'),
                  Text(' Register Now',
                      style:
                      TextStyle(color: Color.fromARGB(255, 255, 0, 102))),
                ],
              )
            ]),
          ),
        ),
      ),
      ),
    );
  }
}