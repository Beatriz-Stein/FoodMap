import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'navegacao.dart';
import 'DetalhesAmbiente.dart';

class DetalhesCulinariaBrasileira extends StatefulWidget {
  const DetalhesCulinariaBrasileira({Key? key}) : super(key: key);

  @override
  State<DetalhesCulinariaBrasileira> createState() =>
      _DetalhesCulinariaBrasileiraState();
}

class _DetalhesCulinariaBrasileiraState
    extends State<DetalhesCulinariaBrasileira> {
  final TextEditingController _searchController = TextEditingController();

  TextStyle stylePoppins({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color ?? const Color.fromARGB(221, 0, 0, 0),
    );
  }

  Widget buildEstrelas(int qtd) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          index < qtd ? Icons.star : Icons.star_border,
          color: Colors.black87,
          size: 18,
        ),
      ),
    );
  }

  Widget buildCard({
    required String nome,
    required String imagemAsset,
    required int estrelas,
    required String avaliacoes,
    required String local,
    required VoidCallback onTap,
    Color? backgroundColor,
    Widget? child,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: backgroundColor ?? const Color(0xFFECC49A),
          borderRadius: BorderRadius.circular(16),
        ),
        child: child ??
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(16)),
                  child: Image.asset(
                    imagemAsset,
                    height: 160,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nome,
                        style: stylePoppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        children: [
                          buildEstrelas(estrelas),
                          const SizedBox(width: 8),
                          Text(
                            avaliacoes,
                            style: stylePoppins(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        local,
                        style: stylePoppins(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Navegacao(
      currentIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 8),
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Pesquisa',
                      hintStyle: stylePoppins(),
                      prefixIcon: Icon(Icons.search, color: Colors.orange[200]),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.orange.shade200),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.orange.shade200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.orange.shade400),
                      ),
                    ),
                    style: stylePoppins(color: Colors.orange[200]!),
                  ),
                ),
                const SizedBox(height: 12),
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: stylePoppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                      ),
                      children: [
                        const TextSpan(
                          text: 'culinária ',
                          style: TextStyle(color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Brasileira',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      buildCard(
                        nome: 'Tero Brasa e Vinho',
                        imagemAsset: 'assets/img/teroBrasa.png',
                        estrelas: 5,
                        avaliacoes: '+999 avaliações',
                        local: 'Vitória - Praia do Canto',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const DetalhesAmbiente(),
                            ),
                          );
                        },
                        backgroundColor: const Color(0xFFECC49A),
                      ),
                      buildCard(
                        nome: 'Pepe Restaurante',
                        imagemAsset: 'assets/img/pepe.png',
                        estrelas: 3,
                        avaliacoes: '509 avaliações',
                        local: 'Vitória - Enseada do Suá',
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Ainda não implementado'),
                            ),
                          );
                        },
                        backgroundColor: const Color(0xFFECC49A),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Divider(
              color: Color(0xFFECC49A),
              thickness: 2,
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
