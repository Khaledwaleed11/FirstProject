import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "Counter",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
                child: const Text(
                  "Minus",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                '$counter',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: const Text(
                  "plus",
                  style: TextStyle(color: Colors.amber),
                ))
          ],
        ),
      ),
    );
  }
}
