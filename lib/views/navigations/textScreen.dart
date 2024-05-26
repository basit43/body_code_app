import 'package:bodycode/resources/associations.dart';
import 'package:bodycode/resources/intentions.dart';
import 'package:bodycode/resources/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              // buildFormattedText(data['explanation'] ?? ""),
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
    } else if (widget.parentScreen == '3rd Molar (Wisdom)') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == '1st Biscupid') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == '2nd Molar') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Canine') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == '1st Molar') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Lateral Incisor') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == '2ndBiscupid') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Central Incisor') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Cavitation') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Amalgam Filling') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Root Canal') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Dental Product') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Cavity') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Mercury') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Cadmium') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Lead') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Aluminium') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Arsenic') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'otherHeavyMetal') {
      data = {
        'explanation': Explanations.thirdMolar,
        'decoding': DecodingData.absorbTrappedEmotionsDec,
        'association': Associations.absorbTrappedEmotionsAss,
        'intention': Intentions.absorbTrappedEmotionsInt
      };
    } else if (widget.parentScreen == 'Prenatal Emotional Compound') {
      data = {
        'explanation': Explanations.parentalEmotionalCompound,
        'decoding': DecodingData.prenatalEmotionalCompoundDec,
        'association': Associations.prenatalEmotionalCompoundAss,
        'intention': Intentions.prenatalEmotionalCompoundInt,
      };
    } else if (widget.parentScreen == 'Common Emotional Compound') {
      data = {
        'explanation': Explanations.commonEmotionalCompound,
        'decoding': DecodingData.commonEmotionalCompoundDec,
        'association': Associations.commonEmotionalCompoundAss,
        'intention': Intentions.commonEmotionalCompoundInt,
      };
    } else if (widget.parentScreen == 'Preconception Emotional Compound') {
      data = {
        'explanation': Explanations.preconceptionTrappedEmotionsExp,
        'decoding': DecodingData.commonEmotionalCompoundDec,
        'association': Associations.commonEmotionalCompoundAss,
        'intention': Intentions.commonEmotionalCompoundInt,
      };
    } else if (widget.parentScreen == 'Shared Emotional Compound') {
      data = {
        'explanation': Explanations.sharedTrappedEmotionsExp,
        'decoding': DecodingData.sharedTrappedEmotionsDec,
        'association': Associations.sharedEmotionalCompoundAss,
        'intention': Intentions.sharedTrappedEmotionsInt,
      };
    } else if (widget.parentScreen == 'Inherited Emotional Compound') {
      data = {
        'explanation': Explanations.inheritedTrappedEmotionsExp,
        'decoding': DecodingData.inheritedTrappedEmotionsDec,
        'association': Associations.inheritedTrappedEmotionsAss,
        'intention': Intentions.inheritedTrappedEmotionsInt,
      };
    } else if (widget.parentScreen == 'Absorb Emotional Compound') {
      data = {
        'explanation': Explanations.absorbEmotionalCompoundExp,
        'decoding': DecodingData.absorbEmotionalCompoundDec,
        'association': Associations.inheritedTrappedEmotionsAss,
        'intention': Intentions.inheritedTrappedEmotionsInt,
      };
    } else if (widget.parentScreen == 'Prenatal Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.heartWallEmotionExp,
        'decoding': DecodingData.heartWallEmotionalDec,
        'association': Associations.heartWallEmotionAss,
        'intention': Intentions.prenatalHeartWallEmotionsInt,
      };
    } else if (widget.parentScreen == 'Common Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.commonHeartWallEmotionExp,
        'decoding': DecodingData.commonHeartWallEmotionDec,
        'association': Associations.commonHeartWallEmotionAss,
        'intention': Intentions.commonHeartWallEmotionsInt,
      };
    } else if (widget.parentScreen == 'Preconception Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.preconceptionHeartWallEmotionExo,
        'decoding': DecodingData.preconceptionHeartWallDec,
        'association': Associations.preconceptionHeartWallAss,
        'intention': Intentions.preconceptionHeartWallEmotionInt,
      };
    } else if (widget.parentScreen == 'Shared Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.sharedHeartWallEmotionExo,
        'decoding': DecodingData.sharedHeartWallDec,
        'association': Associations.sharedHeartWallAss,
        'intention': Intentions.sharedHeartWallEmotionInt,
      };
    } else if (widget.parentScreen == 'Inherited Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.inheritedHeartWallEmotionExp,
        'decoding': DecodingData.inheritedHeartWallDec,
        'association': Associations.inheritedHeartWallAss,
        'intention': Intentions.inheritedHeartWallInt,
      };
    } else if (widget.parentScreen == 'Absorb Heart-Wall Emotion') {
      data = {
        'explanation': Explanations.absorbedHeartWallEmotionExp,
        'decoding': DecodingData.absorbedHeartWallDec,
        'association': Associations.absorbedHeartWallAss,
        'intention': Intentions.absorbedHeartWallInt,
      };
    } else if (widget.parentScreen == 'Will to...') {
      data = {
        'explanation': Explanations.willToExp,
        'decoding': DecodingData.willToDec,
        'association': Associations.wilToAss,
        'intention': Intentions.willToInt,
      };
    } else if (widget.parentScreen == 'Memory Field') {
      data = {
        'explanation': Explanations.memoryFieldExp,
        'decoding': DecodingData.memoryFieldDec,
        'association': Associations.memoryFieldAss,
        'intention': Intentions.memoryFieldInt,
      };
    } else if (widget.parentScreen == 'No Will to...') {
      data = {
        'explanation': Explanations.noWillToExp,
        'decoding': DecodingData.noWillToDec,
        'association': Associations.noWillToAss,
        'intention': Intentions.noWillToInt,
      };
    } else if (widget.parentScreen == 'Despair Anchor') {
      data = {
        'explanation': Explanations.despairAnchor,
        'decoding': DecodingData.despairAnchorDec,
        'association': Associations.despairAss,
        'intention': Intentions.despairInt,
      };
    } else if (widget.parentScreen == 'Image') {
      data = {
        'explanation': Explanations.imageExp,
        'decoding': DecodingData.imageDec,
        'association': Associations.imageAss,
        'intention': Intentions.imageInt,
      };
    } else if (widget.parentScreen == 'Broadcast Message') {
      data = {
        'explanation': Explanations.broadCastMessageExp,
        'decoding': DecodingData.broadCastMessageDec,
        'association': Associations.broadCastMessageAss,
        'intention': Intentions.broadCaseMessageInt,
      };
    } else if (widget.parentScreen == 'Seeking Hear Energy') {
      data = {
        'explanation': Explanations.seekingHeartEnergyExp,
        'decoding': DecodingData.seekingHeartEnergyDec,
        'association': Associations.seekingHeartEnergyAss,
        'intention': Intentions.seekingHeartEnergyInt,
      };
    } else if (widget.parentScreen == 'Organ Communication') {
      data = {
        'explanation': Explanations.organCommunication,
        'decoding': DecodingData.organCommunicationDec,
        'association': Associations.organCommunicationAss,
        'intention': Intentions.organCommunication,
      };
    } else if (widget.parentScreen == 'Current Symptom') {
      data = {
        'explanation': Explanations.currentSymptom,
        'decoding': DecodingData.currentSymptomDec,
        'association': Associations.currentSymptom,
        'intention': Intentions.currentSymptom,
      };
    } else if (widget.parentScreen ==
        'Emotional Reverberation (formerly Resonance)') {
      data = {
        'explanation': Explanations.emotionalReverberation,
        'decoding': DecodingData.emotionalReverberation,
        'association': Associations.emotionalReverBeration,
        'intention': Intentions.emotionalReverberation,
      };
    } else if (widget.parentScreen == 'Sickness Memory') {
      data = {
        'explanation': Explanations.sicknessMemory,
        'decoding': DecodingData.sicknessMemoryDec,
        'association': Associations.sicknessMemory,
        'intention': Intentions.sicknessMemoryInt,
      };
    } else if (widget.parentScreen == 'Miasm') {
      data = {
        'explanation': Explanations.sicknessMemory,
        'decoding': DecodingData.sicknessMemoryDec,
        'association': Associations.sicknessMemory,
        'intention': Intentions.sicknessMemoryInt,
      };
    } else if (widget.parentScreen == 'Mold') {
      data = {
        'explanation': Explanations.moldExp,
        'decoding': DecodingData.moldDec,
        'association': Associations.moldAss,
        'intention': Intentions.moldInt,
      };
    } else if (widget.parentScreen == 'Parasite') {
      data = {
        'explanation': Explanations.parasiteExp,
        'decoding': DecodingData.parasiteDec,
        'association': Associations.parasiteAss,
        'intention': Intentions.parasiteInt,
      };
    } else if (widget.parentScreen == 'Virus') {
      data = {
        'explanation': Explanations.virusExp,
        'decoding': DecodingData.visrusDec,
        'association': Associations.virusAss,
        'intention': Intentions.virusInt,
      };
    } else if (widget.parentScreen == 'Fungus') {
      data = {
        'explanation': Explanations.fungusExp,
        'decoding': DecodingData.fungusDec,
        'association': Associations.fungusAss,
        'intention': Intentions.fungusInt,
      };
    } else if (widget.parentScreen == 'Prion') {
      data = {
        'explanation': Explanations.prionExp,
        'decoding': DecodingData.prionDec,
        'association': Associations.prionAss,
        'intention': Intentions.prionInt,
      };
    } else if (widget.parentScreen == 'Bacteria') {
      data = {
        'explanation': Explanations.bacteria,
        'decoding': DecodingData.bacteriaDec,
        'association': Associations.bacteriaAss,
        'intention': Intentions.bacteriaInt,
      };
    } else if (widget.parentScreen == 'Biofilm') {
      data = {
        'explanation': Explanations.biofilm,
        'decoding': DecodingData.biofilmDec,
        'association': Associations.biofilmAss,
        'intention': Intentions.biofilmInt,
      };
    } else if (widget.parentScreen == 'Spirit Fetus') {
      data = {
        'explanation': Explanations.biofilm,
        'decoding': DecodingData.biofilmDec,
        'association': Associations.biofilmAss,
        'intention': Intentions.biofilmInt,
      };
    } else if (widget.parentScreen == 'Fetus') {
      data = {
        'explanation': Explanations.fetus,
        'decoding': DecodingData.fetusDec,
        'association': Associations.fetusAss,
        'intention': Intentions.fetusInt,
      };
    } else if (widget.parentScreen == 'Amniotic fluid') {
      data = {
        'explanation': Explanations.amnioticFluid,
        'decoding': DecodingData.amnioticDec,
        'association': Associations.amnioticAss,
        'intention': Intentions.amnioticInt,
      };
    } else if (widget.parentScreen == 'Placenta') {
      data = {
        'explanation': Explanations.placenta,
        'decoding': DecodingData.placentaDec,
        'association': Associations.placentaAss,
        'intention': Intentions.placentaInt,
      };
    } else if (widget.parentScreen == 'Umbilical Cord') {
      data = {
        'explanation': Explanations.umbilical,
        'decoding': DecodingData.umbilicalDec,
        'association': Associations.umbilicalAss,
        'intention': Intentions.umbilicalInt,
      };
    } else if (widget.parentScreen == 'Spirit Out of Body') {
      data = {
        'explanation': Explanations.spirit,
        'decoding': DecodingData.spiritDec,
        'association': Associations.spiritAss,
        'intention': Intentions.spiritInt,
      };
    } else if (widget.parentScreen == 'Physical Disconnection') {
      data = {
        'explanation': Explanations.physicalExp,
        'decoding': DecodingData.physicalDec,
        'association': Associations.physicalAss,
        'intention': Intentions.physicalInt,
      };
    } else if (widget.parentScreen == 'Spirit/Physical Disconnection') {
      data = {
        'explanation': Explanations.physicalExp,
        'decoding': DecodingData.physicalDec,
        'association': Associations.physicalAss,
        'intention': Intentions.physicalInt,
      };
    } else if (widget.parentScreen == 'Spirit Break') {
      data = {
        'explanation': Explanations.spiritBreakExp,
        'decoding': DecodingData.spiritBreakDec,
        'association': Associations.spiritBreakAss,
        'intention': Intentions.spiritBreakInt,
      };
    }
  }
}
