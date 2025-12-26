import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:on_campus/utls/hexColor.dart';

class BookingDetails extends StatefulWidget {
  const BookingDetails({super.key});

  @override
  State<BookingDetails> createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();
  List<String> items = ['333', '333'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Booking Details',
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/more-circle.svg'),
          ),
        ],
        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  productImages(),
                  SizedBox(height: 16),

                  decision(),
                  SizedBox(height: 16),
                  productDetails(),
                  groupProductDetails(),

                  SizedBox(height: 40),

                  SizedBox(
                    height: 51,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        backgroundColor: HexColor('00EFD1'),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Contact Now',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w800,
                          color: HexColor('FFFFFF'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget productImages() {
    return Container(
      height: 260,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              height: 260,
              viewportFraction: 1.0,
              enlargeCenterPage: false,

              // autoPlay: false,
              //scrollPhysics: NeverScrollableScrollPhysics(),
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),

            items: items.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    color: Colors.amber,
                    width: MediaQuery.of(context).size.width,
                    child: Text(i),
                  );
                },
              );
            }).toList(),
          ),

          Positioned(
            bottom: 8,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: items.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller?.animateToPage(entry.key),
                  child: Container(
                    width: _current == entry.key ? 10 : 10.0,
                    height: 10,
                    
                    margin: EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 4.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: _current == entry.key
                          ? Colors.white
                          : HexColor('D9D9D9'),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget decision() {
    return Row(
      spacing: 21,
      children: [
        SizedBox(
          width: 120,
          height: 44,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: HexColor('EAFAF6'),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Approve',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w500,
                color: HexColor('35AD9E'),
              ),
            ),
          ),
        ),

        SizedBox(
          width: 120,
          height: 44,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              backgroundColor: HexColor('FFE1E1'),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Cancel',
              style: TextStyle(
                fontSize: 14,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w500,
                color: HexColor('FF3636'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget productDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Room 402',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w800,
          ),
        ),

        SizedBox(height: 8),

        Text(
          '1-in-a Room ',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 16),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Divider(height: 1),
        ),

        SizedBox(height: 16),

        Column(
          spacing: 8,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'Pending',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking ID',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'CAL7394748',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tenants Name',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'Nana yaw',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Years of stay',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    '1 year',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Phone  No',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    '05906946901',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Move in date',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    '17-08-2023',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Move Out date',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    '16-08-2026',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Payment Option',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'Mobile money',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Booking Status',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'paid',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Email Address',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'agbama@gmail.com',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'No of tenants',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    '1',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 60),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: HexColor('F7F7F7'),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Amount Paid',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'GHS 15,000',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 16,
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget groupProductDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 24,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: HexColor('E5E7EB')),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Occupants: 4',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Inter',
                  color: HexColor('2F343A'),
                ),
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Amount Paid',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'GHS 55,000',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Status',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Text(
                    'Pending',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      color: HexColor('01070F'),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: HexColor('E5E7EB')),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tenants',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Inter',
                  color: HexColor('2F343A'),
                ),
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'John Doe (Lead Tenant).',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(11.5),
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor('E3E8F0')),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/circle_person.svg'),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Nana A.',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Inter',
                      color: HexColor('2F343A'),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(11.5),
                    decoration: BoxDecoration(
                      border: Border.all(color: HexColor('E3E8F0')),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Center(
                      child: SvgPicture.asset('assets/icons/circle_person.svg'),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
