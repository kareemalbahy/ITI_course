import 'package:flutter/material.dart';
import 'package:iti_course/main.dart';

class page3 extends StatelessWidget{
  const page3({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const Text("page 3"),
              ElevatedButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Test()));}, child: const Text("go to homepage (push)")),
              ElevatedButton(onPressed:(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const Test()));}, child: const Text("go to homepage (pushReplacement)")),
              ElevatedButton(onPressed:(){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const Test()),(route)=>false);}, child: const Text("go to homepage (pushAndRemoveUntil)")),
              ElevatedButton(onPressed:(){Navigator.of(context).pushNamed("home");},child: const Text("go to homepage (pushNamed)"),),
              ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("back"))
            ],
          ),
        ),
      ),
    );
  }
}