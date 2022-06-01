
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:viacep2/src/views/inicial_view.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:al_downloader/al_downloader.dart';
import '../../globals.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:url_launcher/url_launcher.dart';

class Principal extends StatefulWidget {
  
   const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buscador de CEP")),
      body: Column(
        
        
        // initialUrlRequest: URLRequest(url: Uri.parse("https://loader.to/api/button/?url="+link.toString()+"")),
        // initialOptions: InAppWebViewGroupOptions(
        //       crossPlatform: InAppWebViewOptions(
        //        // debuggingEnabled: true,
        //         useOnDownloadStart: true,
                
        //       ),
        //     ),
        //     onDownloadStartRequest: (controller, url) async {
        //       log("onDownloadStart $url");
        //       // final taskId = await FlutterDownloader.enqueue(
        //       //   url: url,
        //       //   savedDir: (await getExternalStorageDirectory()).path,
        //       //   showNotification: true, // show download progress in status bar (for Android)
        //       //   openFileFromNotification: true, // click on notification to open downloaded file (for Android)
        //       // );
        //     },

       
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          Navigator.push(context, MaterialPageRoute(builder: (context) => Inicial()));
         // log(link.toString());
          setState(() {
            
          });
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.search,)
      ),
      
    );
  }
}
