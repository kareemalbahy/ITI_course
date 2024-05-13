import 'package:flutter/material.dart';
import 'package:iti_course/page3.dart';


class page2 extends StatelessWidget{
  const page2({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(),
        body:Container(
          child: Center(
            child: Column(
              children: [
                const Text("page 2"),
                ElevatedButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const page3()));}, child: const Text("go to page 3 (push)")),
                ElevatedButton(onPressed:(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const page3()));}, child: const Text("go to page 3 (pushReplacement)")),
                ElevatedButton(onPressed:(){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>const page3()),(route)=>false);}, child: const Text("go to page 3 (pushAndRemoveUntil)")),
                ElevatedButton(onPressed:(){Navigator.of(context).pushNamed("page3");},child: const Text("go to page 3 (pushNamed)"),),
                ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: const Text("back"))
              ],
            ),

          ),)
    );
  }
}