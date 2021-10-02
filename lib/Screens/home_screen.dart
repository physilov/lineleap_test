import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lineleap_home/custom_widgets/custom_text.dart';
import 'package:lineleap_home/custom_widgets/featured_events_widgets.dart';
import 'package:hexcolor/hexcolor.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(

        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Colors.black54,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Image.asset('assets/images/Logo@4x.png', height: 30),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: "Brand Ambassadors",family: "Lato-Bold", size: 18, weight: FontWeight.bold,),
                    ),
                    SizedBox(width: screenSize.width / 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: "Venue Owners", size: 18, weight: FontWeight.bold,),
                    ),
                    SizedBox(width: screenSize.width / 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: "Buy Passes", size: 18, weight: FontWeight.bold,),
                    ),
                    SizedBox(width: screenSize.width / 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/search-light@4x.png', height: 30,),
                    ),
                    SizedBox(width: screenSize.width / 40,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue,
                        ),
                        //color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: CustomText(text: "Download the App", size: 18, weight: FontWeight.bold,),
                        ),
                      ),
                    ),
                  ],
                ),
                //SizedBox(width: 20,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('assets/images/My Account@4x.png',height: 30,),
                    ),
                    //SizedBox(width: screenSize.width / 60,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomText(text: "My Account", size: 18, weight: FontWeight.bold,),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ),
        body: SingleChildScrollView(

          child: Container(
            color: HexColor("00172e"),
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: screenSize.height * 0.55,
                      width: screenSize.width,
                        child: Image.asset('assets/images/Hero image@4x.png',fit: BoxFit.cover ,),
                    ),
                    Center(
                      //heightFactor: 4,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: screenSize.height * 0.50,
                          left: screenSize.width / 25,
                          right: screenSize.width/25,
                        ),
                        child: SizedBox(
                          height: screenSize.height * 0.10,
                          width: screenSize.width * 0.78,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.loose,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/images/search-dark@4x.png", height: 30,),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    fit: FlexFit.tight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          hintText: "Search Events, Venues, Artists or Passes                                                                ",
                                          hintStyle: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                                      //CustomText(text: "Search Events, Venues, Artists or Passes", size: 20, colors: Colors.grey,),
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width * 0.15,),
                                  CustomText(text: '|', colors: Colors.grey, size: 30,),
                                  const SizedBox(width: 20,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset("assets/images/map-pin@4x.png", height: 30,),
                                  ),
                                  //const SizedBox(width: 20,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CustomText(text: "All Locations",size:20, colors: Colors.grey,),
                                  ),
                                  Image.asset("assets/images/chevron-down@4x.png", height: 30,),
                                  //SizedBox(width: screenSize.width * 0.15,),
                                  Container(
                                    color: Colors.blue,
                                    child: SizedBox(
                                        height: 300,
                                        width: screenSize.width * 0.15,
                                        child: Center(child: CustomText(text: "Search",family: 'Lato-Black', size: 20, weight: FontWeight.bold,))),
                                  )
                                ],
                              ),
                            )
                          ),
                        ),
                      ),
                    ),


                    //Image.asset("assets/images/Event Image4@4x.png"),

                  ],

    ),


                //Events Widgets
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width / 9, top: 100, right: screenSize.width / 9,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(text: "Event Tickets",colors: Colors.white, size: 32,),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenSize.width / 9, top: 0, right: screenSize.width / 9,),
                  child: FeaturedEvents(),
                ),
                const SizedBox(height: 60,),
                Container(
                  width: screenSize.width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("334558"),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(text: "See 6 More",size: 18,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.25,),



                //Widgets showing app screenshots and download the app benefit options
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.loose,
                      child: Column(

                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/images/Blob@4x.png", height: screenSize.height / 0.95,),
                              Padding(
                                padding: const EdgeInsets.only(left: 160),
                                child: Image.asset("assets/images/Phone@4x.png", height: screenSize.height / 0.95,),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 100,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Own Your Night", size: 24, weight: FontWeight.bold,),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Download the App", size: 44, weight: FontWeight.bold,),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Skip the line, order drinks, purchase event tickets,\nand much more all your favorite bars!", size: 20,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 22.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/images/LineSkip@4x.png", height: 30,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomText(text: "LineSkip", size: 24, weight: FontWeight.bold,),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(40,8,8,8),
                                      child: CustomText(text: "LineSkip passes let you skip\nlong lines at your favourite\nbars, venues, and events."),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:22.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/images/Drinks@4x.png", height: 30,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomText(text: "Drinks", size: 24, weight: FontWeight.bold,),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(40,8,8,8),
                                      child: CustomText(text: "Order your drinks right from\nyour phone. No more splitting\ntabs or soggy receipts!"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 22.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/images/Frame 35@4x.png", height: 30,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomText(text: "Exclusive Deals", size: 24, weight: FontWeight.bold,),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(40,8,8,8),
                                      child: CustomText(text: "Use LineLeap for exclusive\ndeals on your favorite drinks!"),
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.loose,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top:22.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/images/Cover@4x.png", height: 30,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomText(text: "Cover", size: 24, weight: FontWeight.bold,),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(40,8,8,8),
                                      child: CustomText(text: "Ditch the ATM! Pay with\nVenmo, PayPal, or credit card\nusing the Lineleap App"),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 22.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/images/Events@4x.png", height: 30,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomText(text: "Event Tickets", size: 24, weight: FontWeight.bold,),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(40,8,8,8),
                                      child: CustomText(text: "Get tickets and VIP access\nto dope converts you won't\nfind anywhere else."),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 22.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Image.asset("assets/images/Reservations@4x.png", height: 30,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: CustomText(text: "Reservations", size: 24, weight: FontWeight.bold,),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(40,8,8,8),
                                      child: CustomText(text: "Save your spot in line or grab\nthe perfect table in seconds."),
                                    )
                                  ],
                                ),
                              )

                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/Google Play@4x.png", height: 60,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset("assets/images/App Store@4x.png", height: 60,),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
               // SizedBox(height: 100,),


                //Company Info and other options widgets with menu
                Padding(
                  padding: EdgeInsets.fromLTRB(screenSize.width /9,screenSize.height /25,screenSize.width/9,60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/Logo@4x.png", height: 30,),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/instagram (1)@4x.png", height: 20,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/facebook@4x.png", height: 20,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/twitter (1)@4x.png", height: 20,),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                    onTap: (){},
                                    child: Image.asset("assets/images/tiktok@4x.png", height: 20,)),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue,
                            ),
                            //color: Colors.blue,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: CustomText(text: "Download the App", weight: FontWeight.bold,),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Company", size: 24, weight: FontWeight.bold,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Contact Us",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Brand Ambassadors",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "About Us",),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Customers", size: 24, weight: FontWeight.bold,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Buy Event Tickets",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Buy Gift Cards",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Refunds",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Merch",),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Venue Owners", size: 24, weight: FontWeight.bold,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Learn More",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Platform",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Pricing",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Schedule Demo",),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(text: "Dashboard Login",),
                          ),
                        ],
                      )

                    ],
                  ),
                ),

                //footer fo the page with privacy policies and terms and conditions
                Container(
                  height: screenSize.height * 0.05,
                  width: screenSize.width,
                  color: HexColor("192e43"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "© LineLeap 2020", size: 12,),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: CustomText(text: "Privacy Policy", size: 12,),
                          ),
                          SizedBox(width: 30,),
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: CustomText(text: "Terms & Conditions", size: 12,),
                          )
                        ],
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
    );
  }
}
