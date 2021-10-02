import 'package:flutter/material.dart';
import 'package:lineleap_home/custom_widgets/custom_text.dart';
import 'package:hexcolor/hexcolor.dart';


class FeaturedEvents extends StatelessWidget {
  FeaturedEvents({Key? key,
  }) : super(key: key);

  final List<String> assets = [
    'assets/images/Event Image1@4x.png',
    'assets/images/Event Image2@4x.png',
    'assets/images/Event Image3@4x.png',
    'assets/images/Event Image4@4x.png',
    'assets/images/Event Image5@4x.png',
    'assets/images/Event Image6@4x.png',
  ];

  final List<String> title = ["Diplo Presents: Higher Ground", "Tripple Redd-Neon Shark Live", "Kacey Musgraves-oh, what a word: tour II","Diplo Presents: Higher Ground", "Diplo Presents: Higher Ground", "Back to School Bar Crawl"];
  final List<String> subtitle = ["Diplo\nFri, August 26, 6:00 PM +2more\nChamps Downtown.State College, PA\n", "Trippie Redd\nFri, August 26, 6:00 PM +2 more\nRick's American Cafe.Ann Arbor, MI\n", "Kacey Musgraves, Maggie Rogers, Yola\nFri, August 26, 6:00 PM +2 more\nBridgestone Arena. Nashville, TN", "DOSK\nFri August 26, 6:00 PM +2 more\n Champs Downtown. State College, PA\n", "Wale\nFri, August 26, 6:00 PM +2 more\nChamps Downtown.State College, PA\n", "\nFri, August 26, 6:00 PM +2 more\nChamps Downtown.State College, PA\n"

  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
        //physics: const ClampingScrollPhysics(),
        //primary: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          //childAspectRatio: 3/4,
          crossAxisSpacing: 60,
          mainAxisSpacing: 40,

        ),
        itemCount: assets.length,
        itemBuilder: (_, index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: screenSize.width,
              color: HexColor("192e43"),
              child: Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Flexible(
                      flex: 3,

                      child: SizedBox(
                          height: screenSize.height / 4.5,
                          width: screenSize.width / 2.5,
                          child: Image.asset(assets[index], fit: BoxFit.fitWidth, alignment: Alignment.topLeft,)),
                    ),
                    Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CustomText(text: title[index], size: 24, weight: FontWeight.bold,),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: CustomText(text: subtitle[index], size: 16, colors: Colors.grey,),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.loose,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  )
                                ),


                                child: CustomText(text: "From \$99",)
                            ),
                          ),
                        ),


                  ],
                ),
              ),
            ),
          );
        });
  }
}
