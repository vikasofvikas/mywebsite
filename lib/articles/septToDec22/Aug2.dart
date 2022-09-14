import 'package:flutter/material.dart';

import '../../widgets/TextWithGoogleFont.dart';
import '../../widgets/responsive.dart';


class aug3 extends StatefulWidget {




  @override
  _projectDialogState createState() => _projectDialogState();
}
class _projectDialogState extends State<aug3> with SingleTickerProviderStateMixin {

  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Theme.of(context).backgroundColor,
              iconTheme: const IconThemeData(color: Colors.deepOrangeAccent),

              pinned: false,
              floating: true,
              // forceElevated: innerBoxIsScrolled,

            ),
          ];
        },

        body: Container(
          color: Theme.of(context).backgroundColor,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),

            child:Center(

              child:
              Padding(
                padding:  EdgeInsets.only(
                  left: ResponsiveWidget.isSmallScreen(context)? 20.0 :320,
                  right: ResponsiveWidget.isSmallScreen(context)? 20.0 :320,

                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:   [
                      TextWithGoogleFontBold(text: "Quantum fluctuation. Inflation. Expansion. Strong nuclear interaction. Particle-antiparticle annihilation."),

                      SizedBox(height: 20,),
                      /* Container(
                              child: Image.network(categories[0].gifLink, width: 255,height: 255,)
                          ),*/
                      articleTextWithGoogleFont( text:'Quantum fluctuation. Inflation. Expansion. Strong nuclear interaction. Particle-antiparticle annihilation. Deuterium and helium production. Density perturbations. Recombination. Blackbody radiation. Local contraction. Cluster formation. Reionization? Violent relaxation. Virialization. Biased galaxy formation? Turbulent fragmentation. Contraction. Ionization. Compression. Opaque hydrogen. Massive star formation. Deuterium ignition. Hydrogen fusion. Hydrogen depletion. Core contraction. Envelope expansion. Helium fusion. Carbon, oxygen, and silicon fusion. Iron production. Implosion. Supernova explosion. Metals injection. Star formation. Supernova explosions. Star formation. Condensation. Planetesimal accretion. Planetary differentiation. Crust solidification. Volatile gas expulsion. Water condensation. Water dissociation. Ozone production. Ultraviolet absorption. Photosynthetic unicellular organisms. Oxidation. Mutation. Natural selection and evolution. Respiration. Cell differentiation. Sexual reproduction. Fossilization. Land exploration. Dinosaur extinction. Mammal expansion. Glaciation. Homo sapiens manifestation. Animal domestication. Food surplus production. Civilization! Innovation. Exploration. Religion. Warring nations. Empire creation and destruction. Exploration. Colonization. Taxation without representation. Revolution. Constitution. Election. Expansion. Industrialization. Rebellion. Emancipation Proclamation. Invention. Mass production. Urbanization. Immigration. World conflagration. League of Nations. Suffrage extension. Depression. World conflagration. Fission explosions. United Nations. Space exploration. Assassinations. Lunar excursions. Resignation. Computerization. World Trade Organization. Terrorism. Internet expansion. Reunification. Dissolution. World-Wide Web creation. Composition. Extrapolation?')

                    ]
                ),
              ),
            ),
          ),
        ),
      ),


    );

  }
}