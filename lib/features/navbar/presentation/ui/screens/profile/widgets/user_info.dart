import 'package:al_quran_app/core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const SizedBox(height: 30),
          CircularAvatarWidget(
            size: 100,
            imagePath: Image.asset(
              'assets/images/adnan.jpg',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Rizki Adnan Futuh',
              ),
            ],
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(
              CupertinoIcons.map_pin,
            ),
            title: const Text(
              'Address',
            ),
            subtitle: const Text(
              'Perumahan VGH Blok J6 No32A, Kel. Bahagia, Kec. Babelan, Kab.Bekasi',
            ),
            trailing: const Icon(
              CupertinoIcons.right_chevron,
            ),
            onTap: () async {
              await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      icon: const Icon(CupertinoIcons.map_pin),
                      title: const Text('Edit Address'),
                      content: const TextField(),
                      actions: [
                        TextButton(
                            onPressed: () {}, child: const Text('Update'))
                      ],
                    );
                  });
            },
          ),
          const ListTile(
            leading: Icon(
              CupertinoIcons.lock,
            ),
            title: Text(
              'Change Password',
            ),
          ),
        ],
      ),
    );
  }
}
