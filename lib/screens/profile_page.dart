import 'package:fatec_internship/components/my_dropdown_button.dart';
import 'package:fatec_internship/components/my_lightTextField.dart';
import 'package:fatec_internship/components/profile_header.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:fatec_internship/components/Header.dart';
import 'package:fatec_internship/themes/theme_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController unidadeController = TextEditingController();
  final TextEditingController objetivoController = TextEditingController();
  final TextEditingController sobreMimController = TextEditingController();

  String selectedNationality = 'Brasileiro (a) 🇧🇷';
  String selectedEnglishLevel = 'básico';
  String selectedGender = 'Masculino';

  File? _profileImage;

  Future<void> _pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _profileImage = File(pickedImage.path);
      });
    }
  }

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  void _saveProfile() {
    final name = nameController.text;
    final email = emailController.text;
    final unidade = unidadeController.text;
    final objetivo = objetivoController.text;
    final sobreMim = sobreMimController.text;

    // Aqui você pode implementar a lógica para salvar esses dados
    // Por exemplo, salvar em um banco de dados local ou remoto

    // Exibir uma mensagem de confirmação
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Perfil salvo com sucesso!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Header(title: "Meu Perfil"),
        backgroundColor: ThemeColors.backgroundColor,
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.logout),
        //     onPressed: signUserOut,
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(
              profileImageUrl: _profileImage != null ? _profileImage!.path : '',
              username: 'Complete o seu perfil',
              onEditProfile: _pickImage,
            ),
            const SizedBox(height: 32),
            _buildLabel('Nome completo*'),
            MyLightTextField(
                controller: nameController,
                hintText: 'Confirme o seu nome',
                obscureText: false,
                maxLines: 1),
            const SizedBox(height: 20),
            _buildLabel('Gênero*'),
            MyDropdownButton(
              value: selectedGender,
              items: ['Masculino', 'Feminino', 'Outro'],
              hintText: 'Selecione o gênero',
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            _buildLabel('Nacionalidade*'),
            MyDropdownButton(
              value: selectedNationality,
              items: ['Brasileiro (a) 🇧🇷', 'Argentino (a) 🇦🇷'],
              hintText: 'Selecione a nacionalidade',
              onChanged: (value) {
                setState(() {
                  selectedNationality = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            _buildLabel('Endereço de e-mail*'),
            MyLightTextField(
                controller: emailController,
                hintText: 'Confirme o seu e-mail',
                obscureText: false,
                maxLines: 1),
            const SizedBox(height: 20),
            _buildLabel('Unidade atual da Fatec'),
            MyLightTextField(
                controller: unidadeController,
                hintText: 'Digite sua unidade atual',
                obscureText: false,
                maxLines: 1),
            const SizedBox(height: 20),
            _buildLabel('Qual seu objetivo com a plataforma?'),
            MyLightTextField(
                controller: objetivoController,
                hintText: 'Escreva resumidamente',
                obscureText: false,
                maxLines: 1),
            const SizedBox(height: 20),
            _buildLabel('Qual seu nível de inglês atual?*'),
            MyDropdownButton(
              value: selectedEnglishLevel,
              items: ['básico', 'intermediário', 'avançado'],
              hintText: 'Selecione uma opção',
              onChanged: (value) {
                setState(() {
                  selectedEnglishLevel = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            _buildLabel('Sobre Mim'),
            MyLightTextField(
              controller: sobreMimController,
              hintText: 'Um resumo sobre você...',
              obscureText: false,
              maxLines: 5,
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: _saveProfile,
                child: const Text(
                  'Salvar Informações',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeColors.primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF4E4B59),
        fontSize: 14,
      ),
    );
  }
}
