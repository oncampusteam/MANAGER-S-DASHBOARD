import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/Property/property_name.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/hostelDescriptionCard.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';




typedef GestureDetectorCallback = void Function(bool, int);

class DescriptionProperty extends StatefulWidget {
  const DescriptionProperty({super.key});

  @override
  State<DescriptionProperty> createState() => _DescriptionPropertyState();
}

// bool proceed = false;
List<bool> selectedDescription = <bool>[];
bool selected = false;
int currentIndex = 11;





class _DescriptionPropertyState extends State<DescriptionProperty> {

  @override
void initState(){
  super.initState();
  selectedDescription = List.generate(11, (index){
    return false;
  });
  
}



void onTap(bool select, int index){
  setState((){
    if(selected == false){
      selectedDescription[index] = !select;
      currentIndex = index;
      selected = true;
    }else{
      if(currentIndex == index){
        selectedDescription[index] = !select;
        currentIndex = 11;
        selected = false;
      }
    }
  });
}
  @override
  Widget build(BuildContext context) {
    debugPrint("$selectedDescription");
    return SafeArea(
      child: Material(
        child: Container(
        color: Colors.white,
        height: 935.h,
        width: 430.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            saveExitQuestion(),
            Container(
              height: 682.h,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 30.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(
                  height: 78.h,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Which of these best\ndescribe your property?",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp,
                      )
                    )
                    ,)
                ),
                SizedBox(height: 10.h,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionCard(
                        selected: selectedDescription[0],
                        onTap: (){
                          debugPrint("It's been tap");
                          onTap(selectedDescription[0], 0);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/unihostels.png",
                        textDescription: "University Hall",
                        enlargedImage: false,
                      ),
                      DescriptionCard(
                        selected: selectedDescription[1],
                        onTap: (){
                          onTap(selectedDescription[1], 1);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/uniManaged.png",
                        textDescription: "University\nManaged Hostel",
                        enlargedImage: true,
                      ),
                  ],),
                ),

                SizedBox(height: 15.h,),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionCard(
                        selected: selectedDescription[2],
                        onTap: (){
                          onTap(selectedDescription[2], 2);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/privateHostels.png",
                        textDescription: "Private Hostel",
                        enlargedImage: false,
                      ),
                      DescriptionCard(
                        selected: selectedDescription[3],
                        onTap: (){
                          onTap(selectedDescription[3], 3);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/sharedApartment.png",
                        textDescription: "Shared\nApartment",
                        enlargedImage: true,
                      ),
                  ],),
                ),

                SizedBox(height: 15.h),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionCard(
                        selected: selectedDescription[4],
                        onTap: (){
                          onTap(selectedDescription[4], 4);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/privateApartment.png",
                        textDescription:"Private\nApartment",
                        enlargedImage: true,
                      ),
                      DescriptionCard(
                        selected: selectedDescription[5],
                        onTap: (){
                          onTap(selectedDescription[5], 5);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/selfContained.png",
                        textDescription:"Self Contained\nRoom",
                        enlargedImage: true,
                      ),
                  ],),
                ),

                SizedBox(height: 15.h),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionCard(
                        selected: selectedDescription[6],
                        onTap: (){
                          onTap(selectedDescription[6], 6);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/coLiving.png",
                        textDescription: "Co-living\nSpace",
                        enlargedImage: true,
                      ),
                      DescriptionCard(
                        selected: selectedDescription[7],
                        onTap: (){
                          onTap(selectedDescription[7], 7);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/singleRoom.png",
                        textDescription: "Single Room",
                        enlargedImage: false,
                      ),
                  ],),
                ),

                SizedBox(height: 15.h),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionCard(
                        selected: selectedDescription[8],
                        onTap: (){
                          onTap(selectedDescription[8], 8);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/hostFamily.png",
                        textDescription: "Host Family\nAccommodation",
                        enlargedImage: true,
                      ),
                      DescriptionCard(
                        selected: selectedDescription[9],
                        onTap: (){
                          onTap(selectedDescription[9], 9);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/compoundHouse.png",
                        textDescription: "Compound House",
                        enlargedImage: false
                      ),
                  ],),
                ),

                SizedBox(height: 15.h),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DescriptionCard(
                        selected: selectedDescription[10],
                        onTap: (){
                          onTap(selectedDescription[10], 10);
                        },
                        screenWidth: MediaQuery.of(context).size.width,
                        imageUrl: "assets/Screens/Property/DescriptionProperty/boysQuarters.png",
                        textDescription: "Boy's\nQuarters",
                        enlargedImage: true,
                      ),
                  ],),
                ),
                SizedBox(height: 15.h),
                ],),
              )
            ),
            bottomIndicator(
              proceed: selected,
              height: 70.h,
              screenWidth: MediaQuery.of(context).size.width,
              percentageToColor: 0.125,
              handleNextTap: (){
                    Get.to(
                      () => const PropertyName(),
                      transition: Transition.fadeIn,
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeIn
                    );
              }
            )
          ],
        )
            ),
      ));
  }
}