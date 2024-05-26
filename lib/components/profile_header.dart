import 'dart:io';

import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String profileImageUrl;
  final String username;
  final VoidCallback onEditProfile;

  const ProfileHeader({
    Key? key,
    required this.profileImageUrl,
    required this.username,
    required this.onEditProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: profileImageUrl.isNotEmpty
                ? FileImage(File(profileImageUrl))
                : AssetImage('lib/images/default_avatar.png') as ImageProvider,
          ),
          const SizedBox(width: 16),
          Text(
            username,
            style: const TextStyle(fontSize: 18, color: Color(0xFF4E4B59)),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: onEditProfile,
          ),
        ],
      ),
    );
  }
}
