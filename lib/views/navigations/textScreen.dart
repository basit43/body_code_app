import 'package:bodycode/resources/associations.dart';
import 'package:bodycode/resources/intentions.dart';
import 'package:bodycode/resources/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../resources/decoding.dart';
import '../../resources/images.dart';
import '../../resources/explanations.dart';

class TextScreen extends StatefulWidget {
  final String parentScreen;

  const TextScreen({super.key, required this.parentScreen});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  Map<String, String> data = {
    'explanation': 'Images.energy',
    'decoding': 'third',
    'Association': 'third',
    'Intention': 'third'
  };
  // Add more items here

  @override
  void initState() {
    setScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('text Screen');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        //   automaticallyImplyLeading: false, // Remove the back button
        title: Text(
          widget.parentScreen,
          style: const TextStyle(color: Colors.deepPurple),
        ), // Add an app bar
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child:
                // Image.asset(Images.recoveryInterferenceText),
                Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Explanation',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['explanation'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Decoding',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['decoding'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Association',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['association'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Intention',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                data['intention'] ?? "",
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )),
      ),
    );
  }

  void setScreen() {
    if (widget.parentScreen == "Recovery Interference") {
      data = {
        'explanation': Explanations.recoveryTraumaExp,
        'decoding': DecodingData.recoveryTraumaDec,
        'association': Associations.recoveryTraumaAss,
        'intention': Intentions.recoveryTraumaInt
      };
    } else if (widget.parentScreen == "Physical Trauma") {
      data = {
        'explanation': Explanations.physicalTraumaExp,
        'decoding': DecodingData.physicalTraumaDec,
        'association': Associations.physicalTraumaAss,
        'intention': Intentions.physicalTraumaInt
      };
    } else if (widget.parentScreen == "Physical-Emotional Shock") {
      data = {
        'explanation': Explanations.physicalEmotionalExp,
        'decoding': DecodingData.physicalEmotionalDec,
        'association': Associations.physicalEmotionalAss,
        'intention': Intentions.physicalEmotionalInt
      };
    } else if (widget.parentScreen == "Physical Intolerance") {
      data = {
        'explanation': Explanations.physicalIntoleranceExp,
        'decoding': DecodingData.physicalIntoleranceDec,
        'association': Associations.physicalIntoleranceAss,
        'intention': Intentions.physicalIntoleranceInt
      };
    } else if (widget.parentScreen == "Idea Allergy") {
      data = {
        'explanation': Explanations.idealAllergyExp,
        'decoding': DecodingData.idealAllergyDec,
        'association': Associations.idealAllergyAss,
        'intention': Intentions.idealAllergyInt
      };
    } else if (widget.parentScreen == "Idea Intolerance") {
      data = {
        'explanation': Explanations.ideaIntoleranceExp,
        'decoding': DecodingData.ideaIntoleranceDec,
        'association': Associations.ideaIntoleranceAss,
        'intention': Intentions.ideaIntoleranceInt
      };
    } else if (widget.parentScreen == "Physical Allergy") {
      data = {
        'explanation': Explanations.physicalAllergyExp,
        'decoding': DecodingData.physicalAllergyDec,
        'association': Associations.physicalAllergyAss,
        'intention': Intentions.physicalAllergyInt
      };
    } else if (widget.parentScreen == "Curse") {
      data = {
        'explanation': Explanations.curseExp,
        'decoding': DecodingData.curseDec,
        'association': Associations.curseAss,
        'intention': Intentions.curseInt
      };
    } else if (widget.parentScreen == "Cording") {
      data = {
        'explanation': Explanations.cordingExp,
        'decoding': DecodingData.cordingDec,
        'association': Associations.cordingAss,
        'intention': Intentions.cordingInt
      };
    } else if (widget.parentScreen == "Entity") {
      data = {
        'explanation': Explanations.entityExp,
        'decoding': DecodingData.entityDec,
        'association': Associations.entityAss,
        'intention': Intentions.entityInt
      };
    } else if (widget.parentScreen == "Post-Hypnotic Suggestions") {
      data = {
        'explanation': Explanations.postHypnoticExp,
        'decoding': DecodingData.postHypnoticDec,
        'association': Associations.postHypnoticAss,
        'intention': Intentions.postHypnoticInt
      };
    } else if (widget.parentScreen == "Saboteur") {
      data = {
        'explanation': Explanations.saboteurExp,
        'decoding': DecodingData.saboteurDec,
        'association': Associations.saboteurAss,
        'intention': Intentions.saboteurInt
      };
    } else if (widget.parentScreen == "Prenatal Trapped Emotion") {
      data = {
        'explanation': Explanations.prenatalTrappedEmotionsExp,
        'decoding': DecodingData.prenatalTrappedEmotionsDec,
        'association': Associations.prenatalTrappedEmotionsAss,
        'intention': Intentions.prenatalTrappedEmotionsInt
      };
    } else if (widget.parentScreen == "Common Trapped Emotion") {
      data = {
        'explanation': Explanations.commonTrappedEmotionsExp,
        'decoding': DecodingData.commonTrappedEmotionsDec,
        'association': Associations.commonTrappedEmotionsAss,
        'intention': Intentions.commonTrappedEmotionsInt
      };
    } else if (widget.parentScreen == "Preconception Trapped Emotion") {
      data = {
        'explanation': Explanations.preconceptionTrappedEmotionsExp,
        'decoding': DecodingData.preconceptionTrappedEmotionsDec,
        'association': Associations.preconceptionTrappedEmotionsAss,
        'intention': Intentions.preconceptionTrappedEmotionsInt
      };
    } else if (widget.parentScreen == "Shared Trapped Emotion") {
      data = {
        'explanation': Explanations.sharedTrappedEmotionsExp,
        'decoding': DecodingData.sharedTrappedEmotionsDec,
        'association': Associations.sharedTrappedEmotionsAss,
        'intention': Intentions.sharedTrappedEmotionsInt
      };
    } else if (widget.parentScreen == "Inherited Trapped Emotion") {
      data = {
        'explanation': Explanations.inheritedTrappedEmotionsExp,
        'decoding': DecodingData.inheritedTrappedEmotionsDec,
        'association': Associations.inheritedTrappedEmotionsAss,
        'intention': Intentions.inheritedTrappedEmotionsInt
      };
    } else if (widget.parentScreen == "Absorb Trapped Emotion") {
      data = {
        'explanation': Explanations.absorbTrappedEmotionsExp,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    }
  }
}
