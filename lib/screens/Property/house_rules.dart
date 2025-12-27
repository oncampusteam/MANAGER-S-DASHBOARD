import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:on_campus/screens/Property/cancellation.dart';
import 'package:on_campus/widgets/bottomNavIndicator.dart';
import 'package:on_campus/widgets/save&ExitQuestion.dart';

class HouseRules extends StatefulWidget {
  const HouseRules({super.key});

  @override
  State<HouseRules> createState() => _HouseRulesState();
}

bool proceed = false;
List<bool> bools = [];

class _HouseRulesState extends State<HouseRules> {
  @override
  void initState() {
    super.initState();
    bools = List.generate(24, (index) {
      return false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          color: Colors.white,
          height: 935.h,
          width: 430.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 782.h,
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      saveExitQuestion(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        height: 48.h,
                        child: Text(
                          "House Rules & Policies",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 30.sp,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Set rules by selecting the ones that apply to \nyour property.",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Prohibited Activities (Legal &\nSafety Compliance).",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            // color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h),
                      rowCheckBox(
                        text:
                            "No Smoking or illegal substances in the\nproperty.",
                        index: 0,
                      ),
                      rowCheckBox(
                        text:
                            "No firearms, explosives, or hazardous\nmaterials.",
                        index: 1,
                      ),
                      rowCheckBox(
                        text:
                            "Open flames (candles, fire pits)are not\nallowed.",
                        index: 2,
                      ),
                      rowCheckBox(
                        text:
                            "Theft and vandalism will lead to eviction\nand legal action.",
                        index: 3,
                      ),
                      rowCheckBox(
                        text:
                            "Running a business from the property\nwithout approval is not allowed.",
                        index: 4,
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Payment & Refund Policies",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            // color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      rowCheckBox(
                        text:
                            "Rent must be paid in full or (or first\ninstallment) before moving in.",
                        index: 5,
                      ),
                      rowCheckBox(
                        text:
                            "Deposits are refundable only if no\ndamages occur.",
                        index: 6,
                      ),
                      rowCheckBox(
                        text: "Late payments attracts a penalty\nfee.",
                        index: 7,
                      ),
                      rowCheckBox(
                        text:
                            "No refunds after check-in; early\nmove-out forfeits the remaining\nrent.",
                        index: 8,
                      ),
                      rowCheckBox(
                        text:
                            "Tenants must pay electricity, water,\nand internet bills on time.",
                        index: 9,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Visitor & Guest (Security &\nSafety)",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            // color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      rowCheckBox(
                        text: "All visitors must sign in at the\nentrance.",
                        index: 10,
                      ),
                      rowCheckBox(
                        text: "No overnight guests without\napproval.",
                        index: 11,
                      ),
                      rowCheckBox(
                        text:
                            "Unauthorized guest may result in\nwarnings or eviction.",
                        index: 12,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Noise & Conduct Rules\n(Community Living & Behavior).",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            // color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      rowCheckBox(
                        text:
                            "No loud music, parties, or noise\nduring quiet hours.",
                        index: 13,
                      ),
                      rowCheckBox(
                        text:
                            "Respect neighbours by keeping\nnoise and activities at a reasonable\nlevel.",
                        index: 14,
                      ),
                      rowCheckBox(
                        text: "No authorized gatherings or\nsocial events.",
                        index: 15,
                      ),
                      rowCheckBox(
                        text:
                            "Harassment, discrimination, or\nbullying is strictly prohibited.",
                        index: 16,
                      ),
                      rowCheckBox(
                        text:
                            "Report disputes to management\ninstead of causing disruptions.",
                        index: 17,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Maintenance & Cleanliness\n(Hygiene & Property Care).",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                            fontSize: 24.sp,
                            // color: const Color(0xFFB0B0B0),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      rowCheckBox(
                        text: "Keep room and shared spaces\nclean.",
                        index: 18,
                      ),
                      rowCheckBox(
                        text: "Dispose of garbage in designated areas.",
                        index: 19,
                      ),
                      rowCheckBox(
                        text: "Report any damage property immediately.",
                        index: 20,
                      ),
                      rowCheckBox(
                        text:
                            "Tenants cover repair costs for damages\n beyond wear and tear.",
                        index: 21,
                      ),
                      rowCheckBox(
                        text:
                            "No drilling, painting, altering property\nstructures",
                        index: 22,
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.grey),
                          ),
                        ),
                        child: Text(
                          "Add Custom Rules",
                          style: TextStyle(
                            color: const Color(0xFF8D8989),
                            fontSize: 20.sp,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Text(
                          "Specify the type of rules and regulations you\nwant if your policy is not in the above",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 18.sp,
                            color: const Color(0xFF8D8989),
                            letterSpacing: 1,
                            // wordSpacing: ,
                          ),
                        ),
                      ),
                      SizedBox(height: 100.h),
                    ],
                  ),
                ),
              ),
              bottomIndicator(
                proceed: true,
                height: 100.h,
                containerToColor: 2,
                screenWidth: MediaQuery.of(context).size.width,
                percentageToColor: 2 * (0.125),
                handleNextTap: () {
                  Get.to(
                    () => const Cancellation(),
                    transition: Transition.fadeIn,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowCheckBox({required String text, required int index}) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFF8D8989))),
      ),
      margin: EdgeInsets.only(left: 30.h, right: 30.h),
      padding: EdgeInsets.only(right: 30.h),
      height: 130.h,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 20.sp,
                fontFamily: "Roboto",
                color: const Color.fromRGBO(17, 17, 17, 0.9),
                height: 1.8,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  debugPrint("This is the value of checked: ${bools[index]}");
                  bools[index] = !bools[index];
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20.h),
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color: bools[index] ? const Color(0xFF00DEF1) : null,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: const Color(0xFF8D8989)),
                ),
                child: bools[index]
                    ? const FittedBox(
                        child: Icon(Icons.check, color: Colors.white),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
