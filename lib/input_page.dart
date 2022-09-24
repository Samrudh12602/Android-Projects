import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icon_content.dart';
import 'Reusable_card.dart';

const bottomcontainerheight = 80.0;
const activeContainerColour = Color(0xff1d1e33);
const inactiveContainerColour = Color(0xff111328);
const bottomContainerColour = Color(0xFFEB1555);

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender=Gender.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender=Gender.male;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.male ? activeContainerColour:inactiveContainerColour,
                      cardChild: IconContents(text: 'MALE',icon: FontAwesomeIcons.mars),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender=Gender.female;
                      });
                    },
                    child: ReusableCard(
                      colour: selectedGender == Gender.female ? activeContainerColour:inactiveContainerColour,
                      cardChild: IconContents(text: 'FEMALE',icon: FontAwesomeIcons.venus),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: (activeContainerColour),
                    cardChild: IconContents(text: 'MALE',icon: FontAwesomeIcons.mars),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: (activeContainerColour),
                    cardChild: IconContents(text: 'MALE',icon: FontAwesomeIcons.mars),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: (activeContainerColour),
                    cardChild: IconContents(text: 'MALE',icon: FontAwesomeIcons.mars),
                  ),
                ),
              ],
            )),
            Container(
              color: (bottomContainerColour),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomcontainerheight,
            ),
          ],
        ));
  }
}