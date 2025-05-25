import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navegacao.dart' as nav; 
import 'DetalhesCulinariaBrasileira.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextStyle stylePoppins({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? Colors.black,
    );
  }

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final larguraMaxima = 360.0;

    return nav.Navegacao(
      currentIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: larguraTela > larguraMaxima ? larguraMaxima : double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFFECC49A).withOpacity(0.8),
                            width: 1,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.search, color: Color(0xFFECC49A)),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Pesquisa',
                                  hintStyle: stylePoppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFFECC49A),
                                  ),
                                  border: InputBorder.none,
                                ),
                                style: stylePoppins(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text.rich(
                        TextSpan(
                          text: 'Descubra por tipo de ',
                          style: stylePoppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: 'Culinária',
                              style: stylePoppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      botaoImg("assets/img/comidaJaponesa.png", "Japonesa"),
                      botaoImg("assets/img/comidaBrasileira.png", "Brasileira"),
                      botaoImg("assets/img/comidaItaliana.png", "Italiana"),
                      botaoImg("assets/img/comidaFrancesa.png", "Francesa"),
                      const SizedBox(height: 24),
                      Text.rich(
                        TextSpan(
                          text: 'Mais populares ',
                          style: stylePoppins(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: 'perto de você',
                              style: stylePoppins(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage("assets/img/popularChurrascaria.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFECC49A),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: const Color(0xFFECC49A)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Churrascaria Gaúcha',
                              style: stylePoppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                for (var i = 0; i < 5; i++)
                                  const Icon(Icons.star, color: Colors.black, size: 18),
                                const SizedBox(width: 6),
                                Text(
                                  '+999 avaliações',
                                  style: stylePoppins(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 29),
                const Divider(
                  color: Color(0xFFECC49A),
                  thickness: 2,
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

Widget botaoImg(String caminhoImagem, String rotulo) {
  return StatefulBuilder(
    builder: (context, setState) {
      bool isHovered = false;

      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () {
            if (rotulo == "Brasileira") {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesCulinariaBrasileira(),
                ),
              );
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(caminhoImagem),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                AnimatedOpacity(
                  opacity: isHovered ? 0.4 : 0.0,
                  duration: const Duration(milliseconds: 200),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFECC49A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    rotulo,
                    textAlign: TextAlign.center,
                    style: stylePoppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ).copyWith(
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 4,
                          offset: const Offset(1, 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
  }
}