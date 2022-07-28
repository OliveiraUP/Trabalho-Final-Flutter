import 'package:covid_tracker/components/HeaderComponent.dart';
import 'package:covid_tracker/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final controller = ScrollController();
  double offset = 0;
  List<String> sintomasComuns = ["Febre", "Tosse", "Cansaço", "Perda de paladar ou olfato"];
  List<String> sintomasGraves = ["Falta de ar", "Perda da fala", "Confusão mental", "Dores no peito"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             HeaderComponent(
              image: "lib/assets/images/nurse.png",
              offset: -40.0,
              textTop: "Testou positivo?",
              textBottom: "Fique em casa e se cuide!",
               gradientColor1: Color(0xff0704AA),
               gradientColor2: Color(0xff00FEFE),
               isHomeScreen: false,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Coronavírus - O que é?",
                      style: kTitleTextstyle,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 15.0, 15),
                        child: Text("Covid-19 é uma infecção respiratória aguda causada pelo coronavírus SARS-CoV-2, potencialmente grave, de elevada transmissibilidade e de distribuição global."),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 15.0, 30),
                        child: Text("O SARS-CoV-2 é um betacoronavírus descoberto em amostras de lavado broncoalveolar obtidas de pacientes com pneumonia de causa desconhecida na cidade de Wuhan, província de Hubei, China, em dezembro de 2019. Pertence ao subgênero Sarbecovírus da família Coronaviridae e é o sétimo coronavírus conhecido a infectar seres humanos."),
                      ),

                    ],
                  ),
                  Container(
                    child: Text(
                      "Como ele se espalha:",
                      style: kTitleTextstyle,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 15.0, 15),
                        child: Text("O vírus pode se espalhar pela boca ou pelo nariz de uma pessoa infectada, em pequenas partículas líquidas expelidas quando elas tossem, espirram, falam, cantam ou respiram. O tamanho dessas partículas vai de gotas respiratórias maiores até aerosois menores."),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 15.0, 30),
                        child: Text("A infecção pode ocorrer caso você inale o vírus quando estiver perto de alguém que tenha COVID-19 ou se você tocar em uma superfície contaminada e, em seguida, passar as mãos nos olhos, no nariz ou na boca. O vírus se espalha com mais facilidade em locais fechados e em multidões."),
                      ),

                    ],
                  ),
                  Text(
                    "Sintomas apresentados:",
                    style: kTitleTextstyle,
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(0),
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kDeathColor.withOpacity(1),
                        ),
                        child: Container(decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(
                                color: Colors.black,
                                width: 2
                            )
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kActiveShadowColor.withOpacity(1),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Colors.black,
                                  width: 2
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10), child: Text("Grave", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, ), textAlign: TextAlign.center,), ),
                      Container(margin: EdgeInsets.symmetric(horizontal: 10), child: Text("Comum", style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, ),), ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SymptomItem(title: "${sintomasGraves[3]}", isComum: false),
                                SymptomItem(title: "${sintomasComuns[0]}", isComum: true,),
                                SymptomItem(title: "${sintomasComuns[2]}", isComum: true),
                              ],
                            ),
                            SizedBox(height: 20,),
                            Row(
                                children: <Widget>[
                                  SymptomItem(title: "${sintomasGraves[0]}", isComum: false),
                                  SymptomItem(title: "${sintomasComuns[3]}", isComum: true),
                                ]
                            ),
                            SizedBox(height: 20,),
                            Row(
                                children: <Widget>[
                                  SymptomItem(title: "${sintomasGraves[2]}", isComum: false),
                                  SymptomItem(title: "${sintomasGraves[1]}", isComum: false),
                                  SymptomItem(title: "${sintomasComuns[1]}", isComum: true),
                                ]
                            ),
                          ],
                        )


                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Text("Como se prevenir:", style: kTitleTextstyle),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 40.0, 15.0, 15),
                        child: Text("*Mantenha uma distância segura de outras pessoas (pelo menos 1 metro), mesmo que elas não pareçam estar doentes."
                            "\n*Use máscara em público, especialmente em locais fechados ou quando não for possível manter o distanciamento físico.\n"
                            "*Prefira locais abertos e bem ventilados em vez de ambientes fechados. Abra uma janela se estiver em um local fechado.\n"
                            "*Limpe as mãos com frequência. Use sabão e água ou álcool em gel.\n"
                            "*Tome a vacina quando chegar a sua vez. Siga as orientações locais para isso."
                            "\n*Cubra o nariz e a boca com o braço dobrado ou um lenço ao tossir ou espirrar.\n"
                            "*Fique em casa se você sentir indisposição.", ),
                      ),
                    ],
                  ),
                 /* SizedBox(height: 20),
                  PreventCard(
                    text:
                    "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                    image: "assets/images/wear_mask.png",
                    title: "Wear face mask",
                  ),
                  PreventCard(
                    text:
                    "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                    image: "assets/images/wash_hands.png",
                    title: "Wash your hands",
                  ), */
                  SizedBox(height: 50),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PreventCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PreventCard({
    Key? key,
    required this.image,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  ),
                ],
              ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      title,
                      style: kTitleTextstyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        text,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/forward.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SymptomItem extends StatelessWidget {
  String? image;
  final String title;
  final bool isActive;
  final bool isComum;

  SymptomItem({
    Key? key,
    this.image,
    required this.isComum,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: isComum ? kActiveShadowColor.withOpacity(1) : kDeathColor,
        boxShadow: [
          isActive
              ? BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 20,
            color: kActiveShadowColor,
          )
              : BoxShadow(
            offset: Offset(0, 3),
            blurRadius: 6,
            color: kShadowColor,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}