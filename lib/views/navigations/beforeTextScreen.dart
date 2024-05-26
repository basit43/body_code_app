import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../resources/images.dart';
import '../../utils/routes/rotes_named.dart';

class BeforeTextScreen extends StatefulWidget {
  final String parentScreen;

  const BeforeTextScreen({super.key, required this.parentScreen});

  @override
  State<BeforeTextScreen> createState() => _BeforeTextScreenState();
}

class _BeforeTextScreenState extends State<BeforeTextScreen> {
  List<Map<String, String>> data = [
    {'imageUrl': '${Images.energy}', 'text': 'third'},
    // Add more items here
  ];

  @override
  void initState() {
    setScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('before Text Screen');
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.white10,
      appBar: AppBar(
        centerTitle: true, // Center the app bar title
        //   automaticallyImplyLeading: false, // Remove the back button
        title: Text(widget.parentScreen), // Add an app bar
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AlignedGridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              // crossAxisSpacing:1,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, data[index]['screen']!,
                        arguments: data[index]['text']);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20.0), // Adjust corner radius as needed
                      ),
                      surfaceTintColor: Colors.white,
                      color: Colors.white,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            // Display image
                            const SizedBox(
                              height: 15,
                            ),

                            Stack(//textScreen
                                children: [
                              Image.asset(
                                data[index]['imageUrl']!,
                                fit: BoxFit.cover, // Adjust image fit as needed
                                height: height * 0.16, // Adjust image height
                              ),
                              data[index]['screen'] == 'textScreen'
                                  ? Positioned(
                                      right: 20,
                                      bottom: 0,
                                      child: ClipOval(
                                          child: Container(
                                              color: Colors.white,
                                              child: const Padding(
                                                padding: EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.copy,
                                                  size: 15,
                                                ),
                                              ))))
                                  : const SizedBox.shrink()
                            ]),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                data[index]['text']!,
                                style: const TextStyle(fontSize: 12.0),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void setScreen() {
    if (widget.parentScreen == "Post Traumatic") {
      data = [
        {
          'imageUrl': Images.physicalTrauma,
          'text': 'Physical Trauma',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.recoveryInterference,
          'text': 'Recovery Interference',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalEmotionalShock,
          'text': 'Physical-Emotional Shock',
          'screen': RoutesName.textScreen
        },

        // Add more items here
      ];
    } else if (widget.parentScreen == "System or Micromanaging") {
      data = [
        {
          'imageUrl': Images.integumentary,
          'text': "Integumentary System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.circulatory,
          'text': "Circulatory System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.urinary,
          'text': "Urinary System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.digestive,
          'text': "Digestive System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.skeletal,
          'text': "Skeletal System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.endocrine,
          'text': "Endocrine System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.muscular,
          'text': "Muscular System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.immune,
          'text': "Immune/Lymphatic System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.respiratory,
          'text': "Respiratory System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.microbiome,
          'text': "Microbiome",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.reproductive,
          'text': "Reproductive System",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.nervous,
          'text': "Nervous System",
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == "Allergy or Intolerance") {
      data = [
        {
          'imageUrl': Images.physicalIntolerance,
          'text': 'Physical Intolerance',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.idealAllergy,
          'text': 'Idea Allergy',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.idealIntro,
          'text': 'Idea Intolerance',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalAllergy,
          'text': 'Physical Allergy',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Offensive") {
      data = [
        {
          'imageUrl': Images.curse,
          'text': 'Curse',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cording,
          'text': 'Cording',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.entity,
          'text': 'Entity',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.postHypoSugges,
          'text': 'Post-Hypnotic Suggestions',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.saboteur,
          'text': 'Saboteur',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Trapped Emotion") {
      data = [
        {
          'imageUrl': Images.prenatalEmotion,
          'text': 'Prenatal Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.commonEmotion,
          'text': 'Common Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preconceptionEmotion,
          'text': 'Preconception Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sharedEmotion,
          'text': 'Shared Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inheritedEmotion,
          'text': 'Inherited Trapped Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.absorbedEmotion,
          'text': 'Absorb Trapped Emotion',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Compound (old:psychic Trauma)") {
      data = [
        {
          'imageUrl': Images.prenatalEmotion,
          'text': 'Prenatal Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.commonEmotion,
          'text': 'Common Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preconceptionEmotion,
          'text': 'Preconception Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sharedEmotion,
          'text': 'Shared Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inheritedEmotion,
          'text': 'Inherited Emotional Compound',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.absorbedEmotion,
          'text': 'Absorb Emotional Compound',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Heart-Wall Emotion") {
      data = [
        {
          'imageUrl': Images.prenatalEmotion,
          'text': 'Prenatal Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.commonEmotion,
          'text': 'Common Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preconceptionEmotion,
          'text': 'Preconception Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sharedEmotion,
          'text': 'Shared Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.inheritedEmotion,
          'text': 'Inherited Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.absorbedEmotion,
          'text': 'Absorb Heart-Wall Emotion',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Mental") {
      data = [
        {
          'imageUrl': Images.willTo,
          'text': 'Will to...',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.memoryField,
          'text': 'Memory Field',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.noWillTo,
          'text': 'No Will to...',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.programming,
          'text': 'Programming',
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.broadcastToMee,
          'text': 'Broadcast Message',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Disconnection") {
      data = [
        {
          'imageUrl': Images.pregnancyRelated,
          'text': 'Pregnancy-Related',
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.spiritOutOfBody,
          'text': 'Spirit Out of Body',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalDisconnection,
          'text': 'Physical Disconnection',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritPhysicalDisconnection,
          'text': 'Spirit/Physical Disconnection',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritBreak,
          'text': 'Spirit Break',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Programming") {
      data = [
        {
          'imageUrl': Images.despairAnchor,
          'text': 'Despair Anchor',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.image,
          'text': 'Image',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.beliefCodeProgramming,
          'text': 'Belief Code',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Reverberation") {
      data = [
        {
          'imageUrl': Images.seekingHEartEn,
          'text': 'Seeking Hear Energy',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.organComm,
          'text': 'Organ Communication',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.currentSym,
          'text': 'Current Symptom',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.emotionalReverb,
          'text': 'Emotional Reverberation (formerly Resonance)',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sicknessMemory,
          'text': 'Sickness Memory',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.miasm,
          'text': 'Miasm',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Physical Pathogen") {
      data = [
        {
          'imageUrl': Images.mold,
          'text': 'Mold',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parasite,
          'text': 'Parasite',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.virus,
          'text': 'Virus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.fungus,
          'text': 'Fungus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.prion,
          'text': 'Prion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bacteria,
          'text': 'Bacteria',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.biofilm,
          'text': 'Biofilm',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Energy of Pathogen") {
      data = [
        {
          'imageUrl': Images.mold,
          'text': 'Mold',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.parasite,
          'text': 'Parasite',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.virus,
          'text': 'Virus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.fungus,
          'text': 'Fungus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.prion,
          'text': 'Prion',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.bacteria,
          'text': 'Bacteria',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.biofilm,
          'text': 'Biofilm',
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Mother's Brain") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': 'Spirit Fetus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalFetus,
          'text': 'Physical Fetus',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Mother's Spirit") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': 'Spirit Fetus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalFetus,
          'text': 'Physical Fetus',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Mother's Body") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': 'Spirit Fetus',
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.physicalFetus,
          'text': 'Physical Fetus',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Physical Fetus") {
      data = [
        {
          'imageUrl': Images.spiritFetus,
          'text': "Fetus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.amnioticFluid,
          'text': "Amniotic fluid",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritFetus,
          'text': "Placenta",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.spiritFetus,
          'text': "Umbilical Cord",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Organ") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Uterus (Female only)",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Bladder",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Stomach",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Gallbladder",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Spleen",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Heart",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Lungs",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Kidneys",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Liver",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Intestines",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Brain",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Gallbladder",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Deep Structures") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Hypothalamus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Pineal Gland",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Basal Ganglia",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Thalamus",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Limbic System",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Pituitary",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Amygdala",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Cerebrum") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Cropus Callosum",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Frontal Lobe",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Temporal Lobe",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Parietal Lobe",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Occipital Lobe",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Brain Stem") {
      data = [
        {
          'imageUrl': Images.like_ic,
          'text': "Medulla",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Pons",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.like_ic,
          'text': "Midbrain",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Gland") {
      data = [
        {
          'imageUrl': Images.maleGlands,
          'text': "Male Glands",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.brainGlands,
          'text': "Brain Glands",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.femaleGlands,
          'text': "Female Glands",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.others,
          'text': "Other",
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == "Body Cycle or Rhythm") {
      data = [
        {
          'imageUrl': Images.diurnalCycle,
          'text': "Diurnal Cycle",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.circadianRhythm,
          'text': "Circadian Rhythm",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Energy Body") {
      data = [
        {
          'imageUrl': Images.spiritBody,
          'text': "Spirit Body",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.chakra,
          'text': "Chakra",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.aura,
          'text': "Aura",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.meridian,
          'text': "Meridian",
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == "Dental Toxin") {
      data = [
        {
          'imageUrl': Images.teethForReference,
          'text': "Teeth (for reference)",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.cavitation,
          'text': "Cavitation",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.amalgam,
          'text': "Amalgam Filling",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.rootCanal,
          'text': "Root Canal",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.dentalProduct,
          'text': "Dental Product",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cavity,
          'text': "Cavity",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Heavy Metal") {
      data = [
        {
          'imageUrl': Images.mercury,
          'text': "Mercury",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cadmium,
          'text': "Cadmium",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.lead,
          'text': "Lead Filling",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.aluminium,
          'text': "Aluminum",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.arsenic,
          'text': "Arsenic Product",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.otherHeavyMetal,
          'text': "Other Heavy Metal",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Biological Poison") {
      data = [
        {
          'imageUrl': Images.poisonousPlant,
          'text': "Poisonous Plant",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.venom,
          'text': "Venom",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.microbialPoison,
          'text': "Microbial Poison",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Pernicious Influence') {
      data = [
        {
          'imageUrl': Images.cold,
          'text': "Cold",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.dryness,
          'text': "Dryness",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.summerHeat,
          'text': "Summer Heat",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.heat,
          'text': "Heat",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.wind,
          'text': "Wind",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.dampness,
          'text': "Dampness",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Excess") {
      data = [
        {
          'imageUrl': Images.perniciousInfluence,
          'text': "Pernicious Influence",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.stressHormone,
          'text': "Stress Hormone",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.freePadical,
          'text': "Free Radical",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.metabolicWaste,
          'text': "Metabolic Waste",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.nutrientToxicity,
          'text': "Nutrient Toxicity",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.toxicSound,
          'text': "Toxin Sound",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Food Toxin") {
      data = [
        {
          'imageUrl': Images.flavorEnhancer,
          'text': "Flavor Enhancer",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.preservative,
          'text': "Preservative",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.processingAgent,
          'text': "Processing Agent",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.gmoFood,
          'text': "GMO Food",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.sweetener,
          'text': "Sweetener",
          'screen': RoutesName.beforeTextScreen
        },
        {
          'imageUrl': Images.nutritionAdditive,
          'text': "Nutritional Additive",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.foodColoring,
          'text': "Food Coloring",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Electromagnetic Radiation") {
      data = [
        {
          'imageUrl': Images.dirtyElectricity,
          'text': "'Dirty' Electricity",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.magneticField,
          'text': "Magnetic Field",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.electricalField,
          'text': "Electric Field",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.radioFrequency,
          'text': "Radio Frequency",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.xRay,
          'text': "X-Ray",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.radioActivity,
          'text': "Radioactivity",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == "Drug") {
      data = [
        {
          'imageUrl': Images.drug,
          'text': "Pharmaceutical",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.recredential,
          'text': "Recreational",
          'screen': RoutesName.thirdScreen
        },
      ];
    } else if (widget.parentScreen == "Environmental") {
      data = [
        {
          'imageUrl': Images.cosmetic,
          'text': "Cosmetic",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.buildingMaterial,
          'text': "Building Material",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.cleaningProduct,
          'text': "Cleaning Product",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.carpetFurnishing,
          'text': "Carpet & Furnishing",
          'screen': RoutesName.textScreen
        },
        {
          'imageUrl': Images.toxin,
          'text': "Pollution",
          'screen': RoutesName.thirdScreen
        },
        {
          'imageUrl': Images.agricultural,
          'text': "Agriculture",
          'screen': RoutesName.textScreen
        },
      ];
    } else if (widget.parentScreen == 'Upper Teeth') {
      data = [
        {
          'imageUrl': Images.leftUpperTeeth,
          'text': 'Left Upper Teeth',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.rightUpperTeeth,
          'text': 'Right Upper Teeth',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Lower Teeth') {
      data = [
        {
          'imageUrl': Images.leftLowerTeeth,
          'text': 'Left Lower Teeth',
          'screen': RoutesName.beforeTextScreen,
        },
        {
          'imageUrl': Images.rightLowerTeeth,
          'text': 'Right Lower Teeth',
          'screen': RoutesName.beforeTextScreen
        },
      ];
    } else if (widget.parentScreen == 'Left Lower Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Right Lower Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Left Lower Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Left Upper Teeth') {
      data = [
        {
          'imageUrl': Images.thirdMolar,
          'text': '3rd Molar (Wisdom)',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstBiscupid,
          'text': '1st Biscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondMolar,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.canine,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.firstMolar,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.lateralIncisor,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.secondBiscupid,
          'text': '2ndBiscupid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.centralIncisor,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    } else if (widget.parentScreen == 'Right Upper Teeth') {
      data = [
        {
          'imageUrl': Images.upperTeeth,
          'text': '2nd Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': 'Canine',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': '1st Molar',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': 'Lateral Incisor',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': '2nd Bicuspid',
          'screen': RoutesName.textScreen,
        },
        {
          'imageUrl': Images.upperTeeth,
          'text': 'Central Incisor',
          'screen': RoutesName.textScreen,
        }
      ];
    }
  }
}
