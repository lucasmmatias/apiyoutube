library apiyoutube.globals;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:viacep2/src/views/main_view.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../globals.dart';

class Inicial extends StatefulWidget {
  const Inicial({Key? key}) : super(key: key);

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {
  TextEditingController codigo = TextEditingController();
  void salvar() {
    setState(() {
      link = codigo.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Baixar Video")),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: codigo,
                decoration: InputDecoration(labelText: "link", helperText: " "),
              ),
            ),
            
              
          ],
         
        ),
        floatingActionButton: ElevatedButton(
              onPressed: () async {
                salvar();
                final Uri _url = Uri.parse(
                    "https://loader.to/api/button/?url="+link.toString()+"");
                // Navigator.pop(context);
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Principal()));
                if (!await launchUrl(_url, mode: LaunchMode.externalNonBrowserApplication)) throw 'Could not launch $_url';
                setState(() {
                  
                });
              },
              child: Text('Baixar'),
            ),
            
        
        );
  }
}
