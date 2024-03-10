import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_widget.dart';
import 'reusable_card.dart';
import 'constants.dart';

// 0xFF1D1E33
// 0xFF111328



enum Gender {
  male, 
  female
}

  int heightValue = 180;
  int weightValue = 60;
  int ageValue = 19;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender = Gender.male;  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    changeCardColour: (){
                      setState(() {
                      selectedGender = Gender.male;
                      print("Selected male");
                    });
                    },
                    colour: selectedGender == Gender.male? kActiveCardColour : kInactiveCardColour, 
                    cardChild: IconWidget(gender: "MALE", genderIcon: FontAwesomeIcons.mars,),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    changeCardColour: () {
                      setState(() {
                      selectedGender = Gender.female;
                      print("Selected female");
                    });
                    },
                    colour: selectedGender == Gender.female? kActiveCardColour : kInactiveCardColour, 
                    cardChild: IconWidget(gender: "FEMALE", genderIcon: FontAwesomeIcons.venus,),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("HEIGHT", style: kLabelTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(heightValue.toString(), style: kNumberTextStyle,),
                            Text("cm", style: kLabelTextStyle,)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: Color(0xFF8D8E98),
                              thumbColor: Color(0xFFEB1555),
                              overlayColor: Color(0x29EB1555),
                              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16.0),
                              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)
                            ),
                            child: Slider(
                              value: heightValue.toDouble(), 
                              min: 120,
                              max: 220,                            
                              onChanged: (double newValue){
                                setState(() {
                                  heightValue = newValue.toInt();
                                });
                              }),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kLabelTextStyle,),
                        Text(weightValue.toString(), style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  weightValue -= 1;
                                });

                              }, 
                              icon: FontAwesomeIcons.minus,),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              onPressed: (){
                                setState(() {
                                  weightValue += 1;
                                });
                              }
                              , 
                              icon: FontAwesomeIcons.plus)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE", style: kLabelTextStyle,),
                        Text(ageValue.toString(), style: kNumberTextStyle,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus, 
                              onPressed: (){
                                setState(() {
                                  ageValue -= 1;
                                });
                              },),
                            SizedBox(width: 10,),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus, 
                              onPressed: (){
                                setState(() {
  ageValue += 1;
});
                              },)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}

// 0xFFEB1555
// 0xFF8D8E98

class RoundIconButton extends StatelessWidget {
  
  final Function() ? onPressed;
  final IconData icon;

  RoundIconButton({this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 16,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(width: 48, height: 48),

      );
  }
}