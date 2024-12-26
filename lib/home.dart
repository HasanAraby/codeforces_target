import 'package:codeforces_target/handle_shared_preferences.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int goal = SharedPrefs.sharedPrefs.getInt('problems')!;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              goal.toString(),
              style: TextStyle(
                fontSize: 60,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 250),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () async {
                    await SharedPrefs.increment();
                    setState(() {});
                  },
                  color: Colors.red,
                  height: 20,
                  child: Text(
                    'Undo',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                MaterialButton(
                  onPressed: () async {
                    await SharedPrefs.decrement();
                    setState(() {});
                  },
                  color: Colors.green,
                  height: 20,
                  child: Text(
                    'Solve',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
