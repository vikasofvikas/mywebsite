import 'package:flutter/material.dart';
import 'package:mywebsite/widgets/responsive.dart';

import 'flickerTextWidget.dart';


class backgroundHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?24:50),
            flickerText1(text1: 'JavaScript', text2: 'flutter', text3: 'java ਭਾਸ਼ਾ', text4: 'Web', text5:'Technologies', text6:'फ़ोन development',text7:'Database SQ',),
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?1:15),

            flickerText3(text1: 'Firebase', text2: 'Android', text3: ' TensorFlow',text4: 'HTML CSS', text5:'Github', text6:'C ਭਾਸ਼ਾ',text7:'Assembly',),
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?1:5),

            flickerText2(text1: 'Artificial ਬੁੱਧੀ', text2: 'science', text3: 'quantum अस्थिरता', text4: 'inflation', text5:'expansion', text6:'ਮਜ਼ਬੂਤ nuclear',text7:'interaction',),
            SizedBox(width: 1,),

            flickerText4(text1: 'Computer vision', text2: 'Virtual ਅਸਲੀਅਤ', text3: 'Spatial Computing',text4: 'Smart Glasses', text5:'Augmented reality', text6:'AR cloud',text7:'Internet of Things',),

          ],
        ),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?24:80),
            flickerText4(text1: 'Automation', text2: 'unicellular जीव', text3: ' Robotics',text4: 'mutation', text5:'ਕੁਦਰਤੀ selection', text6:'evolution',text7:'Electronic ',),

            flickerText2(text1: 'ਭਿੰਨਤਾ', text2: 'प्रजनन', text3: 'Embedded Systems',text4: 'Quantum Informatics', text5:'', text6:'universe',text7:'3D printing',),

            flickerText3(text1: 'Semantics', text2: 'deuterium', text3: 'Visualisation,',text4: 'fusion', text5:'depletion', text6:'Audiovisual',text7:'envelope',),

            flickerText1(text1: 'Signal Processing', text2: 'Music Computing', text3: 'carbon oxygen', text4: 'silicon fusion', text5:'SatelliteTechnology', text6:'implosion',text7:'supernova', ),
           ],
        ),
        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?13:110),
            flickerText3(text1: 'ब्रम्हांड', text2: 'time', text3: 'वर्तमान',text4: 'Propulsion', text5:'Agro chemicals', text6:'Homo sapiens',text7:'Smart grids',),
            SizedBox(width: 1,),
            flickerText4(text1: 'behaviour', text2: 'abundance', text3: 'civilization',text4: 'innovation', text5:'exploration', text6:'religion',text7:'Acoustics',),
            flickerText1(text1: 'Statistics', text2: 'विनाश', text3: 'exploration', text4: 'colonization', text5:'Statistics', text6:'Mathematical modelling',text7:'taxation', ),

            flickerText2(text1: 'expansion', text2: 'industrialization', text3: 'बागी',text4: 'Physics of Fluids', text5:'proclamation', text6:'',text7:'explore',),

          ],
        ),
        SizedBox(height: 25,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(width: 13,),

            flickerText1(text1: 'Nuclear Physics', text2: 'ਕਾਢ', text3: 'urbanization',  text4: 'immigration', text5:'Hydraulics', text6:'Biostatistics',text7:'depression',),
            SizedBox(width: 18,),
            flickerText2(text1: 'fission', text2: 'explosions', text3: 'united',text4: 'अंतरिक्ष', text5:'ਪੜਚੋਲ', text6:'assassinations',text7:'Neurology',),

            flickerText3(text1: 'Synthetic Biology', text2: 'computerization', text3: 'internet',text4: 'expansion', text5:'reunification', text6:'dissolution',text7:'composition',),

            flickerText4(text1: 'extrapolation', text2: 'entropy', text3: 'heat-death',text4: 'unification', text5:'no energy', text6:'Bionics',text7:'0',),
          ],
        ),

        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?13:110),
            flickerText3(text1: 'braneworld', text2: 'big splat', text3: 'plasma',text4: 'cosmos', text5:'holographic', text6:'steady-state ',text7:'multiverse',),
            SizedBox(width: 1,),
            flickerText4(text1: 'superfluid', text2: 'simulation', text3: 'big-bang',text4: 'meaningless', text5:'meaningful', text6:'unverifiable',text7:'verificable',),
            flickerText1(text1: 'absurdism', text2: 'nihilism', text3: 'stoicism', text4: 'CRISPR', text5:'double slit', text6:'observer',text7:'photons', ),

            flickerText2(text1: 'repetitive', text2: 'ਅਨੰਤਤਾ', text3: 'patterns',text4: 'different', text5:'lie', text6:'Genetic Engineering',text7:'42',),

          ],
        ),
      ],

    );
  }
}

/*
   Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?13:110),
            flickerText3(text1: 'ब्रम्हांड', text2: 'time', text3: 'वर्तमान',text4: 'Mammal expansion', text5:'Glaciation', text6:'Homo sapiens',text7:'manifestation',),
            SizedBox(width: 1,),
            flickerText4(text1: 'behaviour', text2: 'abundance', text3: 'civilization',text4: 'innovation', text5:'exploration', text6:'religion',text7:'warring nations',),
            flickerText1(text1: 'empire creation', text2: 'विनाश', text3: 'exploration', text4: 'colonization', text5:'taxation', text6:'revolution',text7:'चुनाव', ),

            flickerText2(text1: 'expansion', text2: 'industrialization', text3: 'बागी',text4: 'emancipation', text5:'proclamation', text6:'',text7:'explore',),

          ],
        ),
        SizedBox(height: 25,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(width: 13,),

            flickerText1(text1: 'mass production', text2: 'ਕਾਢ', text3: 'urbanization',  text4: 'immigration', text5:'league of nations', text6:'suffrage extension',text7:'depression',),
            SizedBox(width: 18,),
            flickerText2(text1: 'fission', text2: 'explosions', text3: 'united nations',text4: 'अंतरिक्ष', text5:'ਪੜਚੋਲ', text6:'assassinations',text7:'lunar excursions',),

            flickerText3(text1: 'resignation', text2: 'computerization', text3: 'internet',text4: 'expansion', text5:'reunification', text6:'dissolution',text7:'composition',),

            flickerText4(text1: 'extrapolation', text2: 'entropy', text3: 'heat-death',text4: 'unification', text5:'no energy', text6:'sameness',text7:'0',),
          ],
        ),

        SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            SizedBox( width: ResponsiveWidget.isSmallScreen(context)?13:110),
            flickerText3(text1: 'braneworld', text2: 'big splat', text3: 'plasma',text4: 'cosmos', text5:'holographic', text6:'steady-state ',text7:'multiverse',),
            SizedBox(width: 1,),
            flickerText4(text1: 'superfluid', text2: 'simulation', text3: 'big-bang',text4: 'meaningless', text5:'meaningful', text6:'unverifiable',text7:'verificable',),
            flickerText1(text1: 'absurdism', text2: 'nihilism', text3: 'stoicism', text4: 'CRISPR', text5:'double slit', text6:'observer',text7:'photons', ),

            flickerText2(text1: 'repetitive', text2: 'infinity', text3: 'patterns',text4: 'different', text5:'lie', text6:'truth',text7:'42',),

 */