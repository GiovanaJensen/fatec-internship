import 'package:flutter/material.dart';

class VideoContent extends StatelessWidget {
  final String caminhoImagemCanal, nomeDoCanal,tituloVideo;
  const VideoContent({super.key, required this.caminhoImagemCanal, required this.nomeDoCanal, required this.tituloVideo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: CircleAvatar(
                    radius: 48, // Image radius
                    backgroundImage: NetworkImage(caminhoImagemCanal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(nomeDoCanal, style: Theme.of(context).textTheme.bodySmall,),
              )
            ],
          ),
          Text(tituloVideo, style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}