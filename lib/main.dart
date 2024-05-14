import 'dart:convert';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:iti_course/package/apptextfield.dart';
import 'package:iti_course/page2.dart';
import 'package:iti_course/page3.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Test(),
      theme: ThemeData(
        fontFamily: "pixelify",
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        textTheme: const TextTheme(
            bodySmall: TextStyle(color: Colors.red , fontSize: 15),
            bodyMedium: TextStyle(color: Colors.white , fontSize: 20),
            bodyLarge: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 25)
        ),
        brightness: Brightness.dark,
        primaryColor: Colors.red,

      ),
      routes: {
        "home": (context) => const Test(),
        "page2": (context) => const page2(),
        "page3": (context) => const page3(),
      },
    );
  }
}

class Firstscreen extends StatelessWidget{
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(),

      //GestureDetector
      /*Center(
        child: GestureDetector(
          child: Container(
            color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 50 , vertical: 20),
            child: Text("click here"),
          ),

          onTap: (){
            print("clicked");
          },
          onTapUp: (tap){
            print("up");
          },
          onTapDown: (down){
            print("down");
          },
          onTapCancel: (){
            print("cancel");
          },

          onLongPress: (){
            print("holded");
          },
          onLongPressStart: (start){
            print("start");
          },
          onLongPressEnd: (end){
            print("end");
          },

          onDoubleTap: (){
            print("double");
          },

        ),
      ),*/

      //FloatingActionButton
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
          Container(
            child: Text("kimo"),
            height: 200,
            color: Colors.green,
            margin: EdgeInsets.all(20),
          ),
        ],
      )*/

      //InkWell (button)
      /*Center(
        child: InkWell(
          onTap: (){
            print("kareem");
          },
          onLongPress: (){
            print("albahy");
          },

          splashColor: Colors.red,
          child: Container(
            child: Text("click here" , style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.white),),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        )

      )*/

      //IconButton
      /*Center(
        child: IconButton(
          iconSize: 50,
          color: Colors.red,
          onPressed: (){
            print("kareem");
          },
          icon: Icon(Icons.person),
        )
      )*/

      //ElevatedButton icon
      /*Center(
        child: ElevatedButton.icon(
            onPressed: (){
              print("clicked");
            },
            icon: Icon(Icons.access_alarm),
            label: Text("alarm"),
        ),
      )*/

      //ElevatedButton
      /*Center(
        child: ElevatedButton(
          onPressed: () {
            print("clicked");
          },
          onLongPress: (){
            print("holded");
          },
          child: Text("click here"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.all(10),
            elevation: 30,
            textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
          )
          ),
        )
      )*/

      //SizedBox
      /*Row(
    children: [
      Text("kimo"),
      SizedBox(width: 100,),
      Text("albahy")
    ],
    )
      SizedBox(
        child: Container(
          color: Colors.red,
          child: Text("kimo"),
        ),
        width: 100,
        height: double.infinity,
      )*/

      //SingleChildScroll
      /*SingleChildScrollView(
        /*scrollDirection: Axis.horizontal,
        child: Row(
            children:[
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Text("widget 2"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.grey,
                width: 100,
                height: 100,
                child: Text("widget 3"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
            ]
        ),*/    //Row
        /*scrollDirection: Axis.vertical,
        child: Column(
            children:[
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Text("widget 2"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.grey,
                width: 100,
                height: 100,
                child: Text("widget 3"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                width: 100,
                height: 100,
                child: Text("widget 1"),
              ),
            ]
        ),*/    //Column
      )*/

      //Wrap
      /*Wrap(
        direction: Axis.horizontal,
        children:[
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              width: 100,
              height: 100,
              child: Text("widget 2"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.grey,
              width: 100,
              height: 100,
              child: Text("widget 3"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.red,
              width: 100,
              height: 100,
              child: Text("widget 1"),
            ),
        ]
      )*/

      //IndexedStack
      /*IndexedStack(
          index:2,
          //alignment: Alignment.bottomRight,
          children: [
          Container(
              color: Colors.red,
              width: 400,
              height: 400,
              child: Text("widget 1"),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Text("widget 2"),
            ),
            Container(
              color: Colors.grey,
              width: 200,
              height: 200,
              child: Text("widget 3"),
            )
        ],
        ),
      )*/

      //Recipe project
      /*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Strawberry Pavlova Recipe" ,
                style: TextStyle(fontSize: 20 ,color: Colors.white),
                textAlign: TextAlign.center,
              ),

              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal:25),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.blue,
                border: Border.all(color: Colors.black,width: 2.5)
              ),
            ),
              Container(
                child: Text("Pavlova is a merigue-based dessert named after the Russian ballerina Anna pavlova. Pavlova features a crisp crust and soft,light inside, topped with fruit and whipped cream",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.all(25),
                alignment: Alignment.center,
              ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black , width: 2)
              ),
              margin: EdgeInsets.symmetric(horizontal:30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(

                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Container(child: Icon(Icons.star, color: Colors.yellow,)),
                          Container(child: Icon(Icons.star, color: Colors.yellow,)),
                          Container(child: Icon(Icons.star, color: Colors.yellow,)),
                            Container(child: Icon(Icons.star ,)),
                            Container(child: Icon(Icons.star ,)),
                          ]
                        )),
                        Expanded(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("17 review",  style: TextStyle(fontSize: 20),)
                            ]
                        )),
                      ]
                    ),
                    margin: EdgeInsets.all(15),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                              Container(
                                  child: Icon(Icons.restaurant, color: Colors.green, size: 45,),
                                  margin: EdgeInsets.all(2.5),
                              ),
                              Container(
                                  child: Text("feed" , style: TextStyle(fontSize: 17),),
                                  margin: EdgeInsets.all(2.5),
                              ),
                              Container(
                                  child: Text("2- 4", style: TextStyle(fontSize: 15),),
                                  margin: EdgeInsets.all(2.5),
                              )
                          ]),
                            ),),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(Icons.category, color: Colors.green, size: 45,),
                                    margin: EdgeInsets.all(2.5),
                                  ),
                                  Container(
                                    child: Text("feed" , style: TextStyle(fontSize: 17),),
                                    margin: EdgeInsets.all(2.5),
                                  ),
                                  Container(
                                    child: Text("2- 4", style: TextStyle(fontSize: 15),),
                                    margin: EdgeInsets.all(2.5),
                                  )

                            ]),),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Icon(Icons.emoji_food_beverage, color: Colors.green, size: 45,),
                                    margin: EdgeInsets.all(2.5),
                                  ),
                                  Container(
                                    child: Text("feed" , style: TextStyle(fontSize: 17),),
                                    margin: EdgeInsets.all(2.5),
                                  ),
                                  Container(
                                    child: Text("2- 4", style: TextStyle(fontSize: 15),),
                                    margin: EdgeInsets.all(2.5),
                                  )

                            ]),)
                          ]
                      )),
                    ]
                    ),
                  )
                ],
              ),
            )

          ],

        ),
      )*/

      /*Container(
        child: Row(
          children: [
            Text("kimo" , style: TextStyle(fontSize: 20),),
            VerticalDivider(color: Colors.black, width: 100, thickness: 10,),
            Text("Albahy" , style: TextStyle(fontSize: 20),)
          ],
        ),
      )*/   //Row Divider

      /*Container(
        child: Column(
          children: [
            Text("kimo" , style: TextStyle(fontSize: 20),),
            Divider(color: Colors.black, height: 100, thickness: 10,),
            Text("Albahy" , style: TextStyle(fontSize: 20),)
          ],
        ),
      )*/   //Column Divider

      /*Icon(
          Icons.delete,
          size:200 ,
          color:Colors.black
      )*/   //Icon

      /*Row(
        children: [
          Expanded(
              flex:3,
              child:Container(
                  height: double.infinity,
                  child: Text("one") , color: Colors.red)
          ),
          Expanded(
              flex:2,
              child:Container(
                  height: double.infinity,
                  child: Text("two") , color: Colors.blue)
          ),
          Expanded(
              flex:1,
              child:Container(
                  height: double.infinity,
                  child: Text("three") , color: Colors.green)
          )
        ],
      )*/   //Expanded Row

      /*Column(
        children: [
          Expanded(
            flex:3,
            child:Container(
              width: double.infinity,
              child: Text("one") , color: Colors.red)
            ),
          Expanded(
              flex:2,
              child:Container(
                width: double.infinity,
                  child: Text("two") , color: Colors.blue)
              ),
          Expanded(
              flex:1,
              child:Container(
                width: double.infinity,
                  child: Text("three") , color: Colors.green)
              )
        ],
      )*/   //Expanded Column

      /*Container(
        width: 400,
        height: 400,
        color: Colors.black,
        child: Stack(
          //alignment: Alignment.bottomRight,
          /*children: [
            Positioned(
                top: 10,
                left: 10,
                bottom: 10,
                right: 10,
                child: (Container(
              color: Colors.red,
              child: Text("kimo"),
            )
            ))*/  //positioned
            /*Container(
              color: Colors.red,
              width: 400,
              height: 400,
              child: Text("widget 1"),
            ),
            Container(
              color: Colors.blue,
              width: 300,
              height: 300,
              child: Text("widget 2"),
            ),
            Container(
              color: Colors.grey,
              width: 200,
              height: 200,
              child: Text("widget 3"),
            )*/
          ],
        ),
      )*/   //Stack

      /*Container(
        color: Colors.black,
        width: 100,
        height: 100,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Text("kareem albahy" , style: TextStyle(color: Colors.white)),
              Container(color: Colors.red, child: Text("iam a software engineer")),

              //Image.asset("images/kimo.jpg"),
            ]),
      ),*/   //Column

      /*Container(
            color: Colors.black,
              width: 100,
              height: 100,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                Text("kareem albahy" , style: TextStyle(color: Colors.white)),
                Container(color: Colors.red, child: Text("iam a software engineer")),

          //Image.asset("images/kimo.jpg"),
        ]),
            ),*/   //Row

      /*Card(child: Text("kimo albahy" , style: TextStyle(fontSize:40)),
        color:Colors.red,
        elevation: 30,
        shadowColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.black , width: 4)
        ),
      )*/    //card

      /*Container(
        margin: EdgeInsets.all(10),
        child: Image.asset("images/kimo.jpg" , width: double.infinity, height: double.infinity , fit: BoxFit.fill,),
    )*/    //image

      /*Container(
        child : Text(
            "kimo albahy",
            textAlign: TextAlign.right,
            style: TextStyle(fontSize : 30,
                color: Colors.black ,
                wordSpacing: 1.0 ,
                decoration: TextDecoration.underline
            )
        ),
        width: 350,
        height: 200,
        margin: EdgeInsets.all(30),
        //padding: EdgeInsets.all(10),
          //alignment: Alignment.topLeft,
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.white , width: 10),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage("images/FAANG.jpeg"),
            fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
          ),
          boxShadow: [BoxShadow(
            color: Colors.black,
            blurRadius:10,
            spreadRadius:10,
            offset:Offset(10,10)
          )]
        )
        )*/  //container
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});



  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}
class TestState extends State<Test> with SingleTickerProviderStateMixin{

  List names=["karim" , "maged" , "youssef" , "khaled" , "ahmed" , "emad" , "marey" , "rashad" , "anas"];
  //GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();
  late final TabController mycontroller;
  int selectedindex=0;
  late PageController pc;
  List<Widget> widgetpages=[
    const Center(child: Text("Homepage", style: TextStyle(fontSize: 50 , fontWeight: FontWeight.bold),)),
    const pageTwo(),
    Container(child: const Text("you have no notifications"),)
  ];
  List images=[
    {"url":"images/kimo.jpg"},
    {"url":"images/FAANG.jpeg"}
  ];
  //late TextEditingController username =TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  send(){
    var formdata = formstate.currentState;
    if(formdata!.validate()){ print("valid");}
    else{ print("Not valid"); }
  }
  String? username;
  var x=0.0;
  late ScrollController scrollController;
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  var selecteditem;
  List data = [];
  bool loading = false;
  Future<List> getData() async {
    var response = await get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    var responsebody = jsonDecode(response.body);
    return responsebody;
  }
  TextEditingController friends = TextEditingController();
  StreamSubscription<Position>? positionStream;
  getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'location disabled',
        desc: 'please, enable location service in your phone',
        //btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();
    }

    permission = await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'location permission denied',
          desc: 'please, enable location permission for this app',
          //btnCancelOnPress: () {},
          btnOkOnPress: () {},
        ).show();
      }
    }
    if(permission==LocationPermission.always){
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.rightSlide,
        title: 'permission enabled',
        desc: 'thanks, locaton permission enabled',
        //btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();

      positionStream = Geolocator.getPositionStream().listen(
              (Position? position) {

                print("==================================================================");
                print(position!.latitude);
                print(position!.longitude);
                print("==================================================================");          });


      //get current location
      /*Position position = await Geolocator.getCurrentPosition();
      print("==================================================================");
      print(position.latitude);
      print(position.longitude);
      print("==================================================================");*/
    }
    if(permission==LocationPermission.deniedForever){
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'location denied Forever',
        desc: 'please, enable location service in your phone',
        //btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();
    }

  }


  //initializations
  @override
  void initState(){
    getCurrentPosition();
    super.initState();
  }
  /*void initState() {
      super.initState();
      mycontroller = new TabController(    vsync: this  , length: 5  , initialIndex: 0   );
  }*/ //TabController
  /*void initState() {
    pc = new PageController(
      initialPage: 0,
      viewportFraction: 0.9
    );
    super.initState();
  }*/ //PageController
  /*void initState() {
    scrollController= ScrollController();
    scrollController.addListener(() {print("${scrollController.offset}");});
    super.initState();
  }*/ //ScrollConroller

  //disposings
  @override
  /*void dispose() {
    scrollController.dispose();
    super.dispose();
  }*/ //ScrollConroller


  @override
  Widget build(BuildContext context){
    return Scaffold(
        key: scaffoldkey,
        appBar: AppBar(/*title: Text("home"),
          bottom: TabBar(
            controller: mycontroller,
            isScrollable: true,
            indicatorColor: Colors.black,
            indicatorWeight: 5,
            indicatorPadding: EdgeInsets.all(3),
            labelColor: Colors.cyanAccent,
            labelStyle: TextStyle(fontWeight: FontWeight.bold,),
            onTap: (i){
              print("$i");
            },
            tabs: [
              Tab(  child: Text("TAB ONE")  ),
              Tab(  child: Text("TAB TWO")  ),
              Tab(  child: Text("TAB THREE")  ),
              Tab(  child: Text("TAB FOUR") ),
              Tab(  child: Text("TAB FIVE") )
            ],
          ),*/
            actions:[
              IconButton(
                  onPressed: (){
                    showSearch(context: context,
                        delegate: CustomSearch()
                    );
                  },
                  icon: const Icon(Icons.search)
              )
            ]
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text("K"),
                  ),
                  accountName: (Text("kareem Albahy")),
                  accountEmail: (Text("kimo.hero24@gmail.com"))
              ),
              ListTile(   title: const Text("Home page") , leading: const Icon(Icons.home) , onTap: (){}   ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          selectedFontSize: 20,
          iconSize: 30,
          unselectedItemColor: Colors.black,
          onTap: (i){
            setState(() {
              selectedindex=i;
            });
          },
          items: const [
            BottomNavigationBarItem(  label: "Home" , icon: Icon(Icons.home)  ),
            BottomNavigationBarItem(  label: "your profile" , icon: Icon(Icons.api)  ),
            BottomNavigationBarItem(  label: "Notifications" , icon: Icon(Icons.notifications)  )
          ],
        ),
        body: ListView(
          children: [
            AppTextField(
              datalist: [
                SelectedListItem(name: "kareem"),
                SelectedListItem(name: "khaled"),
                SelectedListItem(name: "youssef"),
                SelectedListItem(name: "maged"),
                SelectedListItem(name: "ahmed"),
              ],
              textEditingController: friends,
              title: "select name",
              hint: "names",
              isCitySelected: true,
              multiselection: false,
            ),
            ElevatedButton(
                onPressed: () async{
                  SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
                  sharedPreferences.setString("name" , "kareem");
                },
                child: const Text("set name")
            ),
            ElevatedButton(
                onPressed: () async{
                  setState((){});
                  SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
                  String? name = sharedPreferences.getString("name");
                  print(name);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("$name"),
                        duration: const Duration(seconds: 3),
                      ));
                },
                child: const Text("print name")
            ),
            const Text("pixel font" , style: TextStyle(fontSize: 30, fontFamily: "Pixelify")),
            Text("small" , style: Theme.of(context).textTheme.bodySmall,),
            Text("medium", style: Theme.of(context).textTheme.bodyMedium,),
            Text("large" , style: Theme.of(context).textTheme.bodyLarge,),
            ElevatedButton(onPressed: (){
              positionStream!.cancel();
            }, child: Text("cancel stream")),
            ElevatedButton(onPressed: (){
              positionStream!.cancel();
            }, child: Text("cancel stream")),
            ElevatedButton(onPressed: (){
              positionStream!.cancel();
            }, child: Text("cancel stream"))
          ],

      //topics
      /*
      //Geolocator
      /*
      StreamSubscription<Position>? positionStream;
      getCurrentPosition() async {
        bool serviceEnabled;
        LocationPermission permission;

        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if(!serviceEnabled){

        }

        permission = await Geolocator.checkPermission();
        if(permission==LocationPermission.denied){
          permission=await Geolocator.requestPermission();
          if(permission==LocationPermission.denied){

          }
        }
        if(permission==LocationPermission.always){
          positionStream = Geolocator.getPositionStream().listen(
                  (Position? position) {
                    print("==================================================================");
                    print(position!.latitude);
                    print(position!.longitude);
                    print("==================================================================");          });

          //get current location
          /*Position position = await Geolocator.getCurrentPosition();
          print("==================================================================");
          print(position.latitude);
          print(position.longitude);
          print("==================================================================");*/
        }
        if(permission==LocationPermission.deniedForever){

        }

      }
      //initializations
      @override
      void initState(){
        getCurrentPosition();
        super.initState();
      }
      ElevatedButton(onPressed: (){
              positionStream!.cancel();
            }, child: Text("cancel stream")),
      */
      //shared preferences
      /*
      ElevatedButton(
                onPressed: () async{
                  SharedPreferences sharedPreferences =
                  await SharedPreferences.getInstance();
                  sharedPreferences.setString("name" , "kareem");
                },
                child: Text("set name")
            ),
            ElevatedButton(
                onPressed: () async{
                  setState((){});
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  String? name = sharedPreferences.getString("name");
                  print(name);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text("$name"),
                        duration: Duration(seconds: 3),
                      ));
                },
                child: Text("print name")
            ),
       */

      //futureBuilder
      /*
      Future<List> getData() async {
      var response = await get(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      var responsebody = jsonDecode(response.body);
      return responsebody;
      }

      body: FutureBuilder<List> (
          future: getData(),
          builder: (context , snapshot){
            if(snapshot.connectionState == ConnectionState.waiting)
              { return Center(child: CircularProgressIndicator());  }
            if(snapshot.connectionState == ConnectionState.done)
              {
                if(snapshot.hasError)
                  {  return Text("Error");   }
                if(snapshot.hasData)
                  {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context , i){
                        return ListTile(
                          title: Text("${snapshot.data![i]['title']}"),
                          subtitle: Text("${snapshot.data![i]['body']}"),
                          leading: Text("${snapshot.data![i]['id']}"),
                          trailing: Text("${snapshot.data![i]['userId']}"),
                        );
                        }
                    );
                  }
                return Text("");
              }
            return Text("");
          }
        )
       */

      //HTTP and API
      /*
      //data------------->//List data = [];
                          //bool loading = false;

      ElevatedButton(
                      onPressed: () async{
                        loading =true;
                        setState(() {});
                        var response = await get(
                          Uri.parse("https://jsonplaceholder.typicode.com/posts"));
                        var responsebody = jsonDecode(response.body);
                        data.addAll(responsebody);
                        loading = false;
                        setState(() {});
                      },
                      child: Text("print data")
                  ),
                  if(loading)  Center(child: CircularProgressIndicator(),),
                  ...List.generate(data.length, (index) => Card(
                    child: ListTile(
                      title: Text("${data[index]['title']}"),
                      subtitle: Text("${data[index]['body']}"),
                      trailing: Text("${data[index]['id']}"),
                      leading: Text("${data[index]['userId']}"),
                    ),
                  ))
       */

      //DropdownSearch.multiSelection
      /*
      DropdownSearch<String>.multiSelection(
                items: ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
                popupProps: PopupPropsMultiSelection.menu(
                  showSelectedItems: true,
                  disabledItemFn: (String s) => s.startsWith('I'),
                ),
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Menu mode",
                    hintText: "country in menu mode",
                  ),
                ),
                onChanged: print,
                selectedItems: ["Brazil"],
              )
       */

      //DropdownSearch
      /*
      DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                  disabledItemFn: (String s) => s.startsWith('I'),
                ),
                items: ["Brazil", "Italia (Disabled)","Tunisia", 'Canada'],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: "Menu mode",
                    hintText: "country in menu mode",
                  ),
                ),
                onChanged: print,
                selectedItem: selecteditem,
              ),
       */

      //AwesomeDialog
      /*
      ElevatedButton(
                child: Text("show "),
                onPressed: (){
                  AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      animType: AnimType.rightSlide,
                      title: 'done',
                      desc: 'you had registered succesfully',
                      //btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                  ).show();
                },
              )
       */

      //show Modal Bottom Sheet
      /*+
      ElevatedButton(
                  onPressed: (){
                    showModalBottomSheet(

                        context: context,
                        builder: (context){
                          return Container(
                              height: 100,
                              child: Text("Modal Bottom Sheet"));
                        }
                    );
                  },
                  child: Text("Show Modal Bottom Sheet")
              )
       */

      //show Snack Bar
      /*
      ElevatedButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        action: SnackBarAction(label: "ok", onPressed: (){}),
                        duration: Duration(seconds: 3),
                        content: Text("copied"))
                    );
                  },
                  child: Text("copy")
              ),
       */

      //show Bottom Sheet
      /*
      //GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();\\----------->(data)

      ElevatedButton(
                onPressed: (){
                  scaffoldkey.currentState!.showBottomSheet((context) => Container(
                    color: Colors.blue,
                    height: 100,
                    width: double.infinity,
                    child: Center(child: Text("bottom sheet")),
                  ));
                },
                child: Text("show bottom sheet"),
              ),
       */

      //scroll Controller
      /*
      /*late ScrollController scrollController;
      void initState() {
        scrollController= ScrollController();
        scrollController.addListener(() {print("${scrollController.offset}");});
        super.initState();
      }
      @override
      void dispose() {
        scrollController.dispose();
        super.dispose();
      }*/ //data , initialization of data\\

      ListView(
          controller: scrollController,
          children: [
            ElevatedButton(
                onPressed: (){
                  //scrollController.jumpTo(19264);
                  scrollController.animateTo(19264, duration: Duration(seconds: 3), curve: Curves.ease);
                },
                child: Text("jump to buttom")
            ),
            ...List.generate(
                100,
                    (index) => Container(
                      alignment: Alignment.center,
                      height: 200,
                      child: Text("$index", style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40)),
                      color: index.isEven? Colors.red : Colors.green,
                    )
            ),
            ElevatedButton(
                onPressed: (){
                  scrollController.animateTo(0, duration: Duration(seconds: 3), curve: Curves.ease);
                },
                child: Text("jumo to top")
            )
          ],
        )
      */

      //navigators (push,pushNamed,pushReplacement,pushAndRemoveUntil,pop)
      /*Column(
          children: [
          //push
            ElevatedButton(onPressed:(){Navigator.of(context).push(MaterialPageRoute(builder: (context) => page2()));}, child: Text("go to page 2 (push)")),
          //pushReplacement
            ElevatedButton(onPressed:(){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>page2()));}, child: Text("go to page 2 (pushReplacement)")),
          //pushAndRemoveUntil
            ElevatedButton(onPressed:(){Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>page2()),(route)=>false);}, child: Text("go to page 2 (pushAndRemoveUntil)")),
          //pushNamed
            ElevatedButton(onPressed:(){Navigator.of(context).pushNamed("page3");},child: Text("go to page 3 (pushNamed)"),),
          //pop
            ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("back"))
            ),
          ]
        */

      //slider
      /*
      var x=0.0;
      Slider(
                min: -100.0,
                max: 100.0,
                activeColor: Colors.red,
                inactiveColor: Colors.black,
                value: x,
                onChanged: (val){
                  setState(() {
                    x=val;
                    print(x);
                  });
                }
            )
       */

      //TextFormField
      /*
      class TestState extends State<Test> with SingleTickerProviderStateMixin{
        //late TextEditingController username =TextEditingController();
        GlobalKey<FormState> formstate = new GlobalKey<FormState>();
        send(){
          var formdata = formstate.currentState;
          if(formdata!.validate()){ print("valid");}
          else{ print("Not valid"); }
        }
        String? username;

        @override
        Widget build(BuildContext context){
            return Scaffold(
              body: Form(
                key: formstate,
                  child: Column(
                  children: [

                    TextFormField(
                      decoration: InputDecoration(
                        hintText:"enter your name",
                        hintStyle: TextStyle(fontWeight: FontWeight.bold , color: Colors.grey),
                        hintMaxLines: 1,
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.black,
                        prefixText: ("name   "),
                        prefixStyle: TextStyle(fontWeight: FontWeight.bold , color: Colors.black),
                        suffixIcon: Icon(Icons.help),
                        suffixIconColor: Colors.red,
                        suffix: Text("hint"),
                        labelText: "personal information",
                        labelStyle: TextStyle(fontWeight: FontWeight.bold , color: Colors.black , fontSize: 25),
                        filled: true,
                        fillColor: Colors.grey,
                        enabled: true,
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 3
                          )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 3
                          )
                        ),
                        icon: Icon(Icons.ac_unit)
                      ),
                      cursorColor: Colors.red,
                      cursorHeight: 30,
                      cursorWidth: 10,
                      initialValue: "kimo",
                      keyboardType: TextInputType.text,
                      maxLength: 200,
                      maxLines: 2,
                      minLines: 1,
                      obscureText: false,
                      readOnly: false,
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textInputAction: TextInputAction.go,
                      textAlign: TextAlign.start,
                      //controller: username!,
                      autovalidateMode: AutovalidateMode.always,
                      validator: (text){
                        if(text!.length<4){
                          return "less than 4";
                        }
                        if(text!.length>10){
                          return "more than 10";
                        }
                      },
                      onTap: (){
                        print("onTaped");
                        },
                      onChanged: (text){
                        print("$text");
                      },
                      onEditingComplete: (){
                        print("complrted");
                      },
                      onSaved: (text){
                        username=text;
                      },
                    ),
                    ElevatedButton(onPressed: send, child: Text("send")),
                    //ElevatedButton(onPressed: (){print("$username!");}, child: Text("print")),
                    ElevatedButton(
                        onPressed: (){
                          formstate.currentState!.save();
                          print(username);
                        },
                        child: Text("save")
                    )
                ],
              ))
       */

      //PageViewBuilder
      /*
      class TestState extends State<Test> with SingleTickerProviderStateMixin{
        late PageController pc;
        List images=[
          {"url":"images/kimo.jpg"},
          {"url":"images/FAANG.jpeg"}
        ];
        @override
        void initState() {
          pc = new PageController(
            initialPage: 0,
            viewportFraction: 0.9
          );
          super.initState();
        }

        @override
        Widget build(BuildContext context){
            return Scaffold(
              body: Column(
                children: [
                  Container(
                    height: 300,
                    child: PageView.builder(
                      reverse: false,
                      scrollDirection: Axis.vertical,
                      controller: pc,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (i){
                        print(i);
                      },
                      itemCount: images.length,
                      itemBuilder: (context , i){
                        return Image.asset(images[i]['url']);
                      },
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    pc.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.easeIn);
                  },
                      child: Text("Go to page 2"))
                ],
              )
      */

      //PageView
      /*
      class TestState extends State<Test> with SingleTickerProviderStateMixin{
        late PageController pc;
        @override
        void initState() {
          pc = new PageController(
            initialPage: 2,
            viewportFraction: 0.9
          );
          super.initState();
        }

        @override
        Widget build(BuildContext context){
            return Scaffold(
              body: Column(
                children: [
                  Container(
                    height: 300,
                    child: PageView(
                      reverse: false,
                      scrollDirection: Axis.vertical,
                      controller: pc,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (i){
                        print(i);
                      },
                      children: [
                        Center(child:Container(child: Text("Hello world" , style:TextStyle(fontSize:50),))),
                        Center(child:Container(child: Text("that's me" , style:TextStyle(fontSize:50),))),
                        Image.asset("images/kimo.jpg"),
                        Center(child:Container(child: Text("I'm a software engineer" , style:TextStyle(fontSize:50),))),
                        Center(child:Container(child: Text("and that's my dream" , style:TextStyle(fontSize:50),))),
                        Image.asset("images/FAANG.jpeg")
                      ],
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    pc.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.easeIn);
                  },
                      child: Text("Go to page 2"))
                ],
              )
        */

      //BottomNavigationBar
      /*
      class TestState extends State<Test>{
        int selectedindex=0;
        List<Widget> widgetpages=[
          Center(child: Text("Homepage", style: TextStyle(fontSize: 50 , fontWeight: FontWeight.bold),)),
          pageTwo(),
          Container(child: Text("you have no notifications"),)
        ];
        @override
        Widget build(BuildContext context){
            return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                currentIndex: selectedindex,
                backgroundColor: Colors.red,
                selectedItemColor: Colors.white,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
                selectedFontSize: 20,
                iconSize: 30,
                unselectedItemColor: Colors.black,
                onTap: (i){
                  setState(() {
                    selectedindex=i;
                  });
                },
                items: [
                  BottomNavigationBarItem(  label: "Home" , icon: Icon(Icons.home)  ),
                  BottomNavigationBarItem(  label: "your profile" , icon: Icon(Icons.person)  ),
                  BottomNavigationBarItem(  label: "Notifications" , icon: Icon(Icons.notifications)  )
                ],
              ),
              body: widgetpages.elementAt(selectedindex)
           );
        }
      }

      //pagetwo()
      class pageTwo extends StatelessWidget{
        @override
        Widget build(BuildContext context) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage("images/kimo.jpg")),
                Text("Kareem Ashraf Mohamed Bahy"),
                Text("Kimo.hero24@gmail.com"),
                Text("Arab Open Universty (AOU)"),
                Text("Computer sience (CS)")
              ],
            ),
          );
  }
  }
      */

      //TabController
      /*
      class TestState extends State<Test> {
      late final TabController mycontroller;
      @override
      void initState() {
          super.initState();
          mycontroller = new TabController(    vsync: this  , length: 5  , initialIndex: 0   );
      }
      @override
      Widget build(BuildContext context){
          return Scaffold(
            appBar: AppBar(
              title: Text("home"),
              bottom: TabBar(
                controller: mycontroller,
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorWeight: 5,
                indicatorPadding: EdgeInsets.all(3),
                labelColor: Colors.cyanAccent,
                labelStyle: TextStyle(fontWeight: FontWeight.bold,),
                onTap: (i){
                  print("$i");
                },
                tabs: [
                  Tab(  child: Text("TAB ONE")  ),
                  Tab(  child: Text("TAB TWO")  ),
                  Tab(  child: Text("TAB THREE")  ),
                  Tab(  child: Text("TAB FOUR") ),
                  Tab(  child: Text("TAB FIVE") )
                ],
              ),
            ),
            drawer: Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                       backgroundColor: Colors.red,
                        child: Text("K"),
                      ),
                      accountName: (Text("kareem Albahy")),
                      accountEmail: (Text("kimo.hero24@gmail.com"))
                  ),
                  ListTile(   title: Text("Home page") , leading: Icon(Icons.home) , onTap: (){}   ),
                ],
              ),
            ),
            body: TabBarView(
              controller: mycontroller,
              children: [
                Container(  color: Colors.red , child: Text("CONTAINER ONE")  ),
                Container(  color: Colors.green , child: Text("CONTAINER TWO")  ),
                Container(  color: Colors.yellow  , child: Text("CONTAINER THREE")  ),
                Container(  color: Colors.grey  , child: Text("CONTAINER FOUR")   ),
                Container(  color: Colors.brown , child: Text("CONTAINER FIVE")   )
              ],
          )
      */

      //TabBarView , TabBar and Tabs
      /*return DefaultTabController(
          length: 5,
          child: Scaffold(
            key: scaffoldkey,
            appBar: AppBar(
              title: Text("home"),
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.black,
                indicatorWeight: 5,
                indicatorPadding: EdgeInsets.all(3),
                labelColor: Colors.cyanAccent,
                labelStyle: TextStyle(fontWeight: FontWeight.bold,),
                onTap: (i){
                  print("$i");
                },
                tabs: [
                  Tab(
                    child: Text("TAB ONE"),
                  ),
                  Tab(
                    child: Text("TAB TWO"),
                  ),
                  Tab(
                    child: Text("TAB THREE"),
                  ),
                  Tab(
                    child: Text("TAB FOUR"),
                  ),
                  Tab(
                    child: Text("TAB FIVE"),
                  )
                ],
              ),

              /*title: Text("Homepage"),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){}),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.exit_to_app)),
            IconButton(onPressed: (){}, icon: Icon(Icons.alarm))
          ],
          elevation: 20,
          shadowColor: Colors.grey,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
            statusBarIconBrightness: Brightness.dark,
            //statusBarColor: Colors.green,
          ),
          backgroundColor: Colors.red,
          centerTitle: true,*/),
            //drawerScrimColor: Colors.blue.withOpacity(1),
            drawer: Drawer(
              child: Column(
                children: [
                  UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text("K"),
                      ),
                      accountName: (Text("kareem Albahy")),
                      accountEmail: (Text("kimo.hero24@gmail.com"))
                  ),
                  ListTile(
                    title: Text("Home page"),
                    leading: Icon(Icons.home),
                    onTap: (){},
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                Container(
                  color: Colors.red,
                  child: Text("CONTAINER ONE"),
                ),
                Container(
                  color: Colors.green,
                  child: Text("CONTAINER TWO"),
                ),
                Container(
                  color: Colors.yellow,
                  child: Text("CONTAINER THREE"),
                ),
                Container(
                  color: Colors.grey,
                  child: Text("CONTAINER FOUR"),
                ),
                Container(
                  color: Colors.brown,
                  child: Text("CONTAINER FIVE"),
                )
              ],
            ),
      )
      )*/


        //GridView Count
        /*Container(
        child: GridView.count(
            crossAxisCount: 2,
            children: [Container(child: Text("ONE"),  color: Colors.red),
              Container(child: Text("TWO"), color: Colors.green),
              Container(child: Text("THREE"), color: Colors.yellow,),
            ],
        ),
      )*/

        //List Generate
        /*Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          children:
            List.generate(names.length, (i) {
              return Container(
                child: Text("${names[i]}"),
              );
            }
            )

        ),
      )*/

        //GridView
        /*Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          children: [
            Container(
              child: Text("ONE"),
                height: 200,
              color: Colors.red,
            ),
            Container(
              child: Text("TWO"),
              height: 200,
              color: Colors.green,
            ),
            Container(
              child: Text("THREE"),
              height: 200,
              color: Colors.blue,
            ),
            Container(
              child: Text("FOUR"),
              height: 200,
              color: Colors.yellow,
            ),
            Container(
              child: Text("FIVE"),
              height: 200,
              color: Colors.brown,
            ),
          ],
        ),
      )*/

        //GridView Builder
        /*Container(
        child: GridView.builder(
          itemCount: names.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemBuilder: (context , i){
              return ListTile(
                  tileColor: Colors.red,
                  title: Text("${names[i]['name']}"),
                  subtitle: Text("${names[i]['lastname']}"),
                  trailing: Text("${names[i]['major']}"),
              );
            }
        ),
      )*/

        //ListView Separated
        /*
        //DATA-------------------------->>>>>>>
        List names=[
            {"name":"karim" , "lastname":"albahy" , "major":"CS"},
            {"name":"yousef" , "lastname":"ehab" , "major":"BUS"},
            {"name":"maged" , "lastname":"medhat" , "major":"CS"},
            {"name":"khaled" , "lastname":"gamal" , "major":"CS"}
          ];

        Container(
        child: ListView.separated(
          separatorBuilder: (context,i){
            return Divider(
              color: Colors.black,
              height: 2,
              thickness: 2,
            );
          },
          itemCount: names.length,
          itemBuilder: (context , i){
            return ListTile(
                title: Text("${names[i]['name']}"),
                subtitle: Text("${names[i]['lastname']}"),
                trailing: Text("${names[i]['major']}"),
            );
          }
        ),
      )*/

        //ListView Builder of data
        /*
      //data----------->
      /*List names=[
      {"name":"karim" , "lastname":"albahy" , "major":"CS"},
      {"name":"yousef" , "lastname":"ehab" , "major":"BUS"},
      {"name":"maged" , "lastname":"medhat" , "major":"CS"},
      {"name":"khaled" , "lastname":"gamal" , "major":"CS"}
    ];*/

      Container(
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context , i){
              return ListTile(
                title: Text("${names[i]['name']}"),
                subtitle: Text("${names[i]['lastname']}"),
                trailing: Text("${names[i]['major']}"),
              );
            }
        ),
      )*/

        //ListView Builder
        /*Container(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context , i){
              return Container(
                height:200,
                child: Text("$i"),
                color: Colors.red,
                margin: EdgeInsets.all(10)
              );
            }
        ),
      )*/

        //ListView
        /*Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          physics: ClampingScrollPhysics(),
          reverse: false,
          children: [
            Container(
              child: Text("A", style: TextStyle(fontSize: 50),),
              color: Colors.red,
              height: 300,
              width: 300,
            ),
            Container(
              height: 200,
              child: ListView(
                children: [
                  Container(
                    child: Text("B1", style: TextStyle(fontSize: 50),),
                    color: Colors.yellow,
                    height: 150,
                    width: 300,
                  ),
                  Container(
                    child: Text("B2", style: TextStyle(fontSize: 50),),
                    color: Colors.green,
                    height: 150,
                    width: 300,
                  ),
                  Container(
                    child: Text("B3", style: TextStyle(fontSize: 50),),
                    color: Colors.grey,
                    height: 150,
                    width: 300,
                  ),
                ],
              ),
            ),
            Container(
              child: Text("C", style: TextStyle(fontSize: 50),),
              color: Colors.blue,
              height: 300,
              width: 300,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Container(
                  child: Text("D1", style: TextStyle(fontSize: 50),),
                  color: Colors.brown,
                  height: 150,
                  width: 300,
                ),
                Container(
                  child: Text("D2", style: TextStyle(fontSize: 50),),
                  color: Colors.orange,
                  height: 150,
                  width: 300,
                ),
                Container(
                  child: Text("D1", style: TextStyle(fontSize: 50),),
                  color: Colors.purple,
                  height: 150,
                  width: 300,
                ),
              ],
            )

          ],
        ),
      )*/

        //AlertDialog
        /*Center(
        child: ElevatedButton(
          child: Text("Show Alert"),
          onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                actions: [
                  ElevatedButton(onPressed: (){print("ok");}, child: Text("ok")),
                  ElevatedButton(
                      onPressed: (){
                        print("cancel");
                        Navigator.of(context).pop();
                      },
                      child: Text("cancel")),
                ],
                actionsPadding: EdgeInsets.all(10),
                titlePadding: EdgeInsets.all(20),
                contentPadding: EdgeInsets.all(20),
                title: Text("Warning"),
                content: Text("free up sum space"),
                backgroundColor: Colors.white,
              );
            });
          },
        ),
      )*/

        //CircleAvatar
        /*Center(
        child: CircleAvatar(
          backgroundColor: Colors.green,
          backgroundImage: AssetImage("images/kimo.jpg"),
          radius: 100,
          child: Text("kimo"),
        ),
      )*/

        //ListTile
        /*ListTile(
        title: Text("galaxy A71"),
        subtitle: Text("samsung"),
        leading: Icon(Icons.mobile_friendly),
        trailing: Text("200\$"),
        onTap: (){
          print("Taped");
        },
        onLongPress: (){
          print("long pressed");
        },
        tileColor: Colors.red,
      )*/

        //SwitchListTile
        /*Center(
        child: SwitchListTile(
          title: Text("allow notifications"),
          subtitle: Text("enable"),
          secondary: Icon(Icons.notifications_active),
          isThreeLine: true,
          controlAffinity: ListTileControlAffinity.trailing,
          selected: notify,
          value: notify,
          onChanged: (val) {
            setState(() {
              notify=val;
              print(notify);
            });
          },
        ),
      )*/

        //Switch
        /*Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Allow notification"),
            Switch(
              activeColor: Colors.red,
                activeTrackColor: Colors.blue,
                inactiveThumbColor: Colors.green,
                inactiveTrackColor: Colors.black,
                value: notify,
                onChanged: (val){
                  setState(() {
                    notify=val;
                    print(notify);
                  });
                }
            )
          ],
        )
      )*/

        //RadioListTile
        /*Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            RadioListTile(
              activeColor: Colors.red,
              controlAffinity: ListTileControlAffinity.trailing,
              selected: name=="karim" ? true : false,
              title: Text("karim"),
                subtitle: Text("Albahy"),
                secondary: Icon(Icons.person),
                value: "karim",
                groupValue: name,
                onChanged: (val){
              setState(() {
                name=val!;
              });
            }),
            RadioListTile(
                activeColor: Colors.red,
                controlAffinity: ListTileControlAffinity.trailing,
                selected: name=="maged" ? true : false,
                title: Text("maged"),
                subtitle: Text("medhat"),
                secondary: Icon(Icons.person),
                value: "maged",
                groupValue: name,
                onChanged: (val){
                  setState(() {
                    name=val!;
                  });
                })
          ],
        ),
      )*/

        //Radio
        /*Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text("kimo"),
                Radio(
                    value: "kimo",
                    groupValue: name,
                    onChanged: (val){
                      setState(() {
                        name=val!;
                        print("$name");
                      });
                    }
                )
              ],
            ),
            Row(
              children: [
                Text("Albahy"),
                Radio(
                    value: "Albahy",
                    groupValue: name,
                    onChanged: (val){
                      setState(() {
                        name=val!;
                        print("$name");
                      });
                    }
                )
              ],
            )
          ],
        ),
      )*/

        //CheckboxListTile
        /*Container(
        padding: EdgeInsets.all(10),
        child: CheckboxListTile(
          controlAffinity: ListTileControlAffinity.trailing,
          activeColor: Colors.red,
          contentPadding: EdgeInsets.all((10)),
          title: Text("kimo"),
          subtitle: Text("Albahy"),
          secondary:Icon(Icons.person),
          isThreeLine:true,
          selected:kimo,
          value: kimo,
          onChanged: (val){
            setState(() {
              kimo = val!;
              print(kimo);
            });
          },
        ),
      )*/

        //Checkbox
        /*Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text("kimo"),
              Checkbox(
                  activeColor: Colors.red,
                  checkColor: Colors.black,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  value: kimo,
                  onChanged: (val){
                    setState(() {
                      kimo=val!;
                      print(kimo);
                    });
                  })
            ],
          )
  ),*/
        */
    ));
  }
}

class pageTwo extends StatelessWidget{
  const pageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage("images/kimo.jpg")),
          Text("Kareem Ashraf Mohamed Bahy"),
          Text("Kimo.hero24@gmail.com"),
          Text("Arab Open Universty (AOU)"),
          Text("Computer sience (CS)")
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String name;
  final String email;
  final String date;
  final String imagename;

  const CustomListTile({
    super.key,
    required this.name,
    required this.email,
    required this.date,
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                ),

                child: Image.asset("image/$imagename", fit: BoxFit.cover,),
              ),
              Expanded(
                child: ListTile(
                  title: Text(name),
                  subtitle: Text(email),
                  trailing: Text(date),
                ),
              ),
            ],
          ),
        )

    );
  }
}

class CustomSearch extends SearchDelegate{
  List? names= [
    "kareem",
    "maged",
    "youssef",
    "khaled",
    "gehad",
    "ahmed",
    "marey",
    "anas",
    "taha",
    "mohamed",
    "rashad"
  ];

  List? filter;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (){query="";}, icon: const Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){close(context, null);}, icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("Result $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query==""){
      return ListView.builder(
          itemCount: names!.length,
          itemBuilder: (context, i) {
            return InkWell(
                onTap: () {
                  showResults(context);
                },
                child: Card(child: Text("${names![i]}")));
          });
    }
    else
    {
      filter= names!.where((element) => element.startsWith(query)).toList();
      return ListView.builder(
          itemCount: filter!.length,
          itemBuilder: (context, i) {
            return InkWell(
                onTap: () {
                  showResults(context);
                },
                child: Card(child: Text("${filter![i]}")));
          });
    }
  }

}