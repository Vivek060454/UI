import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:google_fonts/google_fonts.dart';
class Draweer extends StatefulWidget {
  const Draweer({Key? key}) : super(key: key);

  @override
  State<Draweer> createState() => _DraweerState();
}

class _DraweerState extends State<Draweer> {
  final controller = TextEditingController();
  int activeIndex=0;
  DatePickerController _controller = DatePickerController();
  late DateTime _selectedDate;
  int selectedIndex=0;
  //get selectedIndex => 0;

  @override
  void initState() {
    super.initState();
    _resetSelectedDate();
  }

  void _resetSelectedDate() {
    _selectedDate = DateTime.now().add(Duration(days: 2));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor:Colors.black54,

      appBar: PreferredSize(

        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
        backgroundColor: Colors.white,
          title: Text(''),


          leading:
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Container(

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),

                  color: Colors.white,


                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, //New
                      blurRadius: 10.0,
                    )
                  ],





                ),
                child:ImageIcon(AssetImage('assets/icon/Group 919.png',     ),size: 50, color: Colors.black)),
          ),
          actions: [

        Padding(
              padding: EdgeInsets.all(8.0),
              child:  Container(

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),

                  color: Colors.white,


                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, //New
                      blurRadius: 10.0,
                    )
                  ],





                ),
                child: CircleAvatar(


                  radius: 20,
                  backgroundImage:AssetImage('assets/icon/Group 921.png',),
                  backgroundColor: Colors.transparent,

                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child:  Container(

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),

                  color: Colors.white,


                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, //New
                      blurRadius: 10.0,
                    )
                  ],





                ),
                child: Badge(
                  borderRadius: BorderRadius.circular(4),
                  badgeContent: Text('2'),

                  child: CircleAvatar(

                    radius: 20,
                    backgroundImage:AssetImage('assets/icon/=ƒôìTrailing icon 1.png',),
                    backgroundColor: Colors.transparent,

                  ),
                ),
              ),
            ),



            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child:  CircleAvatar(
            //
            //     radius: 20,
            //     backgroundImage:
            //
            //     AssetImage('assets/icon/Group 917.png',),
            //     backgroundColor: Colors.transparent,
            //
            //   ),
            // ),

            Padding(
              padding: EdgeInsets.all(0.0),
              child:  SizedBox(
                height: 95,
                width: 95,
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(

                    radius: 0,
                    backgroundImage:AssetImage('assets/icon/=ƒôì Leading Icon l Use High Emphasis-1.png',),
                    backgroundColor: Colors.transparent,

                  ),
                ),
              ),
            )
          ],
          elevation: 0,
        ),
      ),


      drawer: Container(
        decoration: BoxDecoration(
          color: Colors.black
        ),
        child: Drawer(

          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
            child: Container(
              child: ListView(
                //Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
                  SizedBox(
                      height: 190,
                      child:Text('')

                    // DrawerHeader(
                    //
                    //     child: CircleAvatar(
                    //
                    //       radius: 20,
                    //       backgroundImage:AssetImage('assets/Tritan-bike.png',),
                    //       backgroundColor: Colors.transparent,
                    //
                    //                               ),
                    //                         ),

                  ),


                ],
              ),
            )
        ),
      ),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [

              Table(
                columnWidths: {
                  0: FlexColumnWidth(5.3),
                  1: FlexColumnWidth(0.9),


                },

                children: [

                  TableRow(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text('Welcome, Mypcot !!',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(95,112,150, 100),fontSize:20,fontWeight: FontWeight.bold))),

                              SizedBox(
                                height: 10,
                              ),
                                Row(
                                  children: [
                                    Text('here is your dashboard...',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(125,136,156,100),fontSize: 16,fontWeight: FontWeight.w400))),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child:  Container(
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),

                              color: Colors.white,


                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 10.0,
                                )
                              ],





                            ),

                            child: CircleAvatar(

                              radius: 20,
                              backgroundImage:AssetImage('assets/icon/Group 922.png',),
                              backgroundColor: Colors.white,

                            ),
                          ),
                        ),
                      ]
                  )

                ],
              ),
              CarouselSlider(items: [

                Padding(
                  padding: const EdgeInsets.only(top: 13,bottom: 8,
                      left: 4,
                      right: 4),
                  child:                 Stack(
                    children: [
                      Positioned(
                          top: 10, left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.blue,
                            ),
                            constraints: BoxConstraints(
                              maxWidth: 295,
                              maxHeight: 200,
                              minWidth:295,
                            ),
                          )
                      ),
                      Positioned(
                        top:25 ,
                        left: 15,
                        child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/icon/orders-illustration-image.png',width: 110,height: 110,)),),
                      Positioned(
                          top: 150,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 110,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.deepOrange,
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Orders',style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.w500))))),
                          )),
                      Positioned(
                        bottom: 50,
                        right: 20,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('02 ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:25,fontWeight: FontWeight.bold))),
                                      Text('Pending',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(101,118,154,100),fontSize:13,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                  Text('Orders From',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:15,fontWeight: FontWeight.w500)))
                                ],
                              ),
                            )),),
                      Positioned(
                          right: 20,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('You Have',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400))),
                                      Text(' 3 ',  style:GoogleFonts.roboto(textStyle: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w400))),
                                      Text('active',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                  Text('orders from',style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400))),
                                ],
                              ),
                            ),
                          ))
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13,bottom: 8,
                      left: 4,
                      right: 4),
                  child:                 Stack(
                    children: [
                      Positioned(
                          top: 10, left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(220,178,35,100),
                            ),
                            constraints: BoxConstraints(
                              maxWidth: 295,
                              maxHeight: 200,
                              minWidth:295,
                            ),
                          )
                      ),
                      Positioned(
                        top:25 ,
                        left: 15,
                        child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/icon/subscriptions-illustration-image.png',width: 110,height: 110,)),),
                      Positioned(
                          top: 150,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 110,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.blue,
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Subscription',style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.w500))))),
                          )),
                      Positioned(
                        bottom: 20,
                        right: 10,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('119 ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:25,fontWeight: FontWeight.bold))),
                                      Text('Pending',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(101,118,154,100),fontSize:13,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                  Text('Deliveries',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:15,fontWeight: FontWeight.w500)))
                                ],
                              ),
                            )),),
                      Positioned(
                       top: 40,
                        right: 20,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('10 ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:25,fontWeight: FontWeight.bold))),
                                      Text('Active',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(101,118,154,100),fontSize:13,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                  Text('Subscriptions',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:15,fontWeight: FontWeight.w500)))
                                ],
                              ),
                            )),),
                      Positioned(
                          right: 30,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                       Text(' 03 ',  style:GoogleFonts.roboto(textStyle: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w400))),
                                      Text('deliveres',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                  ],
                              ),
                            ),
                          ))
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13,bottom: 8,
                      left: 4,
                      right: 4),
                  child:                 Stack(
                    children: [
                      Positioned(
                          top: 10, left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(49,206,149,100),
                            ),
                            constraints: BoxConstraints(
                              maxWidth: 295,
                              maxHeight: 200,
                              minWidth:295,
                            ),
                          )
                      ),
                      Positioned(
                        top:25 ,
                        left: 15,
                        child:Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white,
                            ),
                            child: Image.asset('assets/icon/customers-illustration-image.png',width: 110,height: 110,)),),
                      Positioned(
                          top: 150,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 140,
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.pinkAccent
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('View Customers',style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize:16,fontWeight: FontWeight.w500))))),
                          )),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('10 ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:25,fontWeight: FontWeight.bold))),
                                      Text('Active   ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(101,118,154,100),fontSize:13,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                  Text('Customers   ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:15,fontWeight: FontWeight.w500)))
                                ],
                              ),
                            )),),
                      Positioned(
                        top: 40,
                        right: 20,
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 10.0,
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text('1.8% ',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize:25,fontWeight: FontWeight.bold))),
                                     Icon(Icons.arrow_upward,color: Color.fromRGBO(49,206,149,100),),
                                      SizedBox(
                                        height: 20,
                                      )
                                          ],
                                  ),
                                     ],
                              ),
                            )),),
                      Positioned(
                          right: 20,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                                color: Colors.pinkAccent
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(' 13 ',  style:GoogleFonts.roboto(textStyle: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.w400))),
                                      Text('New customers',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w400))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ))
                    ],

                  ),
                ),
              ], options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                 
                //  autoPlay: true,
                //  autoPlayInterval: const Duration(seconds: 5),
                  height: 240





              )),

              Table(
                columnWidths: {
                  0: FlexColumnWidth(2),
                  1: FlexColumnWidth(2),
                  2: FlexColumnWidth(2),

                },

                children: [

                  TableRow(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(_selectedDate.toString().substring(0,11),style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(125,136,156,100),fontSize: 16,fontWeight: FontWeight.w400))),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Today',style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(44,61,99,100),fontSize: 20,fontWeight: FontWeight.bold))),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),

                              color: Colors.white,


                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey, //New
                                  blurRadius: 15.0,
                                )
                              ],





                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(' TIMELINE',style: TextStyle(fontSize: 13),),
                                      Icon(Icons.arrow_drop_down_rounded, size: 25),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                        Container(
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),

                            color: Colors.white,


                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey, //New
                                blurRadius: 15.0,
                              )
                            ],





                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today_rounded, size: 25),
          SizedBox(width: 10,),
          Text( _selectedDate.toString().substring(0,7),style: TextStyle(fontSize: 13))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),

                      ]
                  )

                ],
              ),
SizedBox(
  height: 1,
),
              CalendarTimeline(
                showYears: true,
                initialDate: _selectedDate,
                firstDate: DateTime(2019, 1, 15),
                lastDate: DateTime(2024, 11, 20),
                onDateSelected: (date) => setState(() => _selectedDate = date),
                leftMargin: 0,

                monthColor: Colors.white70,
                dayColor: Color.fromRGBO(44,61,99,100),
                dayNameColor:Color.fromRGBO(0,128,128,100),
                activeDayColor: Color.fromRGBO(0,128,128,100),
                activeBackgroundDayColor: Colors.transparent,
                dotsColor:   Color.fromRGBO(0,128,128,100),
                //selectableDayPredicate: (date) => date.day != 23,
                locale: 'en',
              ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

height: 150,
                width: 320,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20),

                  color: Colors.white,

                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey, //New
                      blurRadius: 10.0,
                    )
                  ],

                ),

                constraints: BoxConstraints(

                  maxWidth: 335,maxHeight: 200,  minWidth: 335,



                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [

                      Positioned(
                        top: 10,
                        child:  Text('New Order Created ', textAlign: TextAlign.left, style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(95,112,150, 100),fontSize:19,fontWeight: FontWeight.bold),)),
                      ),

                      Positioned(
  top: 40,
  child:  Text('New Order Created with Order',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(96,113,150,100),fontSize: 15,fontWeight: FontWeight.w400))),
),
                   Positioned(
                       top: 70,
                       child:  Text('09:00 AM',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(255,132,85,100),fontSize: 16,fontWeight: FontWeight.w400))),
                     ),
                      Positioned(
                        top:95,


                        child:   Icon(Icons.arrow_forward_outlined,color: Colors.deepOrangeAccent,),),
                     Positioned(
                         right: 15,
                         top: 25,
                         child: CircleAvatar(
radius: 36,
                         backgroundColor:Colors.deepOrangeAccent,child: Image(image:AssetImage('assets/icon/Group 900.png',),width: 130,height:130,color: Colors.white,))),
                     ]
                  ),
                ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(

                  height: 150,
                  width: 320,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),

                    color: Colors.white,

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey, //New
                        blurRadius: 10.0,
                      )
                    ],

                  ),

                  constraints: BoxConstraints(

                    maxWidth: 335,maxHeight: 200,  minWidth: 335,



                  ),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                        children: [

                          Positioned(
                            top: 10,
                            child:  Text('New Order Created ', textAlign: TextAlign.left, style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(95,112,150, 100),fontSize:19,fontWeight: FontWeight.bold),)),
                          ),

                          Positioned(
                            top: 40,
                            child:  Text('New Order Created with Order',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(96,113,150,100),fontSize: 15,fontWeight: FontWeight.w400))),
                          ),
                          Positioned(
                            top: 70,
                            child:  Text('09:00 AM',  style:GoogleFonts.roboto(textStyle: TextStyle(color: Color.fromRGBO(255,132,85,100),fontSize: 16,fontWeight: FontWeight.w400))),
                          ),
                          Positioned(
                            top:95,


                            child:   Icon(Icons.arrow_forward_outlined,color: Colors.deepOrangeAccent,),),
                          Positioned(
                              right: 15,
                              top: 25,
                              child: CircleAvatar(
                                  radius: 36,
                                  backgroundColor:Colors.deepOrangeAccent,child: Image(image:AssetImage('assets/icon/Group 900.png',),width: 130,height:130,color: Colors.white,))),
                        ]
                    ),
                  ),
                ),
              )


            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //specify the location of the FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {

          });
        },
        tooltip: "Centre FAB",
        child: Icon(Icons.add),
        backgroundColor:  Colors.blue,
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icon/Group 910.png'),),
                label: 'Home',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/icon/Group 912.png'),color: Colors.black26,),
                label: 'Customers',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icon/Group 913.png'),color: Colors.black26,),
              label: 'Khata',
              backgroundColor: Colors.blue,
            ),

            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icon/Group 914.png'),color: Colors.black26,),
              label: 'Orders',
              backgroundColor: Colors.blue,
            ),
          ],
        //  type: BottomNavigationBarType.shifting,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.blue,
          iconSize: 20,
         // onTap: (){},
          elevation: 0
      ),
    );
  }
}

