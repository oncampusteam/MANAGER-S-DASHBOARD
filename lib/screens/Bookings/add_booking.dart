import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:on_campus/screens/Bookings/room_type.dart';
import 'package:on_campus/utls/hexColor.dart';

class AddBooking extends StatefulWidget {
  const AddBooking({super.key});

  @override
  State<AddBooking> createState() => _AddBookingState();
}

class _AddBookingState extends State<AddBooking> {
  String initialCountry = 'GH';
  PhoneNumber number = PhoneNumber(isoCode: 'GH');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Booking',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [formContent()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget formContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 32,
      children: [
        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  color: HexColor('01070F'),
                  fontSize: 14,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                ),
              ),

              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  isDense: true,
                  hint: Text('Enter your full name'),
                  hintStyle: TextStyle(
                    color: HexColor('B7B8BA'),
                    fontFamily: 'Outfit',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: HexColor('F9F9F9'),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              Text(
                'Email address',
                style: TextStyle(
                  color: HexColor('01070F'),
                  fontSize: 14,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                ),
              ),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  isDense: true,
                  hint: Text('Enter your email'),
                  hintStyle: TextStyle(
                    color: HexColor('B7B8BA'),
                    fontFamily: 'Outfit',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: HexColor('F9F9F9'),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              Text(
                'Phone number',
                style: TextStyle(
                  color: HexColor('01070F'),
                  fontSize: 14,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('F1F1F1'), width: 1),
                  borderRadius: BorderRadius.circular(5),
                  color: HexColor('F9F9F9'),
                ),
                child: InternationalPhoneNumberInput(
                  spaceBetweenSelectorAndTextField: 0,
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  onInputValidated: (bool value) {
                    print(value);
                  },
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                    // backgroundColor: Colors.black87,
                  ),

                  ignoreBlank: false,
                  autoValidateMode: AutovalidateMode.disabled,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  // textFieldController: controller,
                  formatInput: false,
                  keyboardType: TextInputType.numberWithOptions(
                    signed: true,
                    decimal: true,
                  ),
                  inputBorder: OutlineInputBorder(borderSide: BorderSide.none),
                  inputDecoration: InputDecoration(
                    hintText: 'Enter your phone number',
                    hintStyle: TextStyle(
                      color: HexColor('B7B8BA'),
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),

                  onSaved: (PhoneNumber number) {
                    print('On Saved: $number');
                  },
                ),
              ),

              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  isDense: true,
                  hint: Text('Enter your email'),
                  hintStyle: TextStyle(
                    color: HexColor('B7B8BA'),
                    fontFamily: 'Outfit',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  fillColor: HexColor('F9F9F9'),
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 3,
            children: [
              Text(
                'Hostel',
                style: TextStyle(
                  color: HexColor('01070F'),
                  fontSize: 14,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w500,
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => RoomType()));
                },
                child: Container(
                  height: 48,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor('F1F1F1'), width: 1),
                    borderRadius: BorderRadius.circular(5),
                    color: HexColor('F9F9F9'),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Select a room type',  style: TextStyle(
                      color: HexColor('B7B8BA'),
                      fontFamily: 'Outfit',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),),
                
                    SvgPicture.asset('assets/icons/arrow-down.svg')
                  ],),
                ),
              ),
            ],
          ),
        ),
     
     
      ],
    );
  }
}
