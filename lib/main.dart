import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4, // Este é o tamanho do container em relação à largura da tela
        height: MediaQuery.of(context).size.height * 0.8, // Este é o tamanho do container em relação à altura da tela
        padding: EdgeInsets.all(20), // Adiciona um padding ao container
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 239, 236, 236), // Esta é a cor de fundo do retângulo
          borderRadius: BorderRadius.circular(10), // Isso faz com que os cantos do retângulo sejam arredondados
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150, // Aumenta o raio do CircleAvatar
              backgroundImage: AssetImage('../lib/assets/frontal1.jpg'),
            ),
            Text('FASTECH - Faculdade de Tecnologia de Sinop', style: TextStyle(fontSize: 14)), // Esta é a legenda
            SizedBox(height: 20), // Adiciona um espaço entre o avatar e os botões
            ButtonTheme(
              minWidth: 300.0, // Aumenta a largura mínima dos botões
              height: 60.0, // Aumenta a altura dos botões
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => _launchURL('https://www.instagram.com/fastech.sinop/'),
                    child: Text('Instagram', style: TextStyle(fontSize: 20)), // Aumenta o tamanho da fonte do texto do botão
                  ),
                  SizedBox(height: 20), // Adiciona um espaço entre os botões
                  ElevatedButton(
                    onPressed: () => _launchURL('https://www.facebook.com/Fastech.Sinop/?locale=pt_BR'),
                    child: Text('Facebook', style: TextStyle(fontSize: 20)), // Aumenta o tamanho da fonte do texto do botão
                  ),
                  SizedBox(height: 20), // Adiciona um espaço entre os botões
                  ElevatedButton(
                    onPressed: () => _launchURL('https://www.linkedin.com/company/fastech-sinop/'),
                    child: Text('Linkedin', style: TextStyle(fontSize: 20)), // Aumenta o tamanho da fonte do texto do botão
                  ),
                  SizedBox(height: 20), // Adiciona um espaço entre os botões
                  ElevatedButton(
                    onPressed: () => _launchURL('https://www.faculdadefastech.com.br/'),
                    child: Text('Site', style: TextStyle(fontSize: 20)), // Aumenta o tamanho da fonte do texto do botão
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String urlString) async {
    var url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Não foi possível abrir $urlString';
    }
  }
}
