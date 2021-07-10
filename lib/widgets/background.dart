import 'package:flutter/material.dart';


class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Container(
                padding: const EdgeInsets.all(28),
                child: CircleAvatar(
                  radius: 40,
                  foregroundImage: AssetImage('assets/avatar.png'),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: Text('Iran Junior', style: TextStyle(fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.person, size: 32),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Account',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.photo, size: 32),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Images',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  children: [
                    Icon(Icons.settings, size: 32),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
