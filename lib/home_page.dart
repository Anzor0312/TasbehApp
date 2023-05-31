import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: counter <= 33
                ? const DecorationImage(
                    image: AssetImage("assets/kaba.png"), fit: BoxFit.cover)
                : counter <= 66
                    ? const DecorationImage(
                        image: AssetImage("assets/m.png"), fit: BoxFit.cover)
                    : const DecorationImage(
                        image: AssetImage("assets/d.png"), fit: BoxFit.cover)),
        child: Center(
          child: Text(counter.toString(),style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
              onPressed: () {
                if (counter >0) {
                 setState(() {
                     counter--;
                    
                  });
                } 
              },
              child: const Center(
                  child: Text(
                "-",
                style: TextStyle(color: Colors.black, fontSize: 35),
              ))),
          FloatingActionButton(
            onPressed: () {
              if (counter >= 0 &&counter<=99) {
                 setState(() {
                     counter++;
                    
                  });
                } else if (counter == 99) {
                  setState(() {
                    counter = 0;
                  });
                }
              },
            child: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
