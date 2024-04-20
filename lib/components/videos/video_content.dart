import 'package:flutter/material.dart';

class VideoContent extends StatelessWidget {
  const VideoContent({super.key});

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
              const SizedBox(
                width: 20,
                height: 20,
                child: CircleAvatar(
                    radius: 48, // Image radius
                    backgroundImage: NetworkImage('https://yt3.ggpht.com/84ALFuw4UCyfL1TyoMU77D-I6xngPjn2X0kbx2bMAyoFzWwR-utcrbDn_MuNJcroPcmU9NdGGQ=s176-c-k-c0x00ffffff-no-rj-mo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Rafaella Ballerini", style: Theme.of(context).textTheme.bodySmall,),
              )
            ],
          ),
          const Text("Como personalizar o seu perfil no Github (Readme)", style: TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),)
        ],
      ),
    );
  }
}