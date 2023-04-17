import 'package:flutter/material.dart';
import 'favorite_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.
                all(Radius.circular(10))
            ),

            child: Column(
              children: [
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const
                      BoxDecoration(
                          color:
                          Colors.black12,
                          shape:
                          BoxShape.circle),
                      child: const
                      Icon(
                          Icons.
                          supervised_user_circle_outlined),
                    ),
                    const SizedBox(width: 10),

                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 20,),
                        Text ("UserName",
                            style: TextStyle
                              (color: Colors.black87,
                                fontSize: 16)),
                        Text ("user@abc.com",
                            style: TextStyle
                              (color: Colors.black87,
                                fontSize: 14)),
                      ],),

                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              buildMenuItem(
                  text: 'Favorite File',
                  icon: Icons.favorite_border,
                  onClicked: () => isSelectedItem(context, 0)),
              buildMenuItem(
                  text: 'Open File',
                  icon: Icons.folder_outlined,
                  onClicked: () => isSelectedItem(context, 1)),
              buildMenuItem(
                  text: 'Share Files',
                  icon: Icons.share_outlined,
                  onClicked: () => isSelectedItem(context, 2)),
              buildMenuItem(
                  text: 'Drive Download File',
                  icon: Icons.backup_outlined,
                  onClicked: () => isSelectedItem(context, 3)),
              const Divider(color: Colors.white,endIndent: 10,indent: 10),
              buildMenuItem(
                  text: 'Settings',
                  icon: Icons.settings,
                  onClicked: () => isSelectedItem(context, 4)),
              buildMenuItem(
                  text: 'Log Out',
                  icon: Icons.power_settings_new_rounded,
                  onClicked: () => isSelectedItem(context, 5)),
            ],
          ),
        ],
      ),
    );
  }

  isSelectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FavoriteScreen(),
            ));
        break;
    }
  }
}

Widget buildMenuItem(
    {required String text,
      required IconData icon,
      VoidCallback? onClicked}) {
  const colorData = Colors.white60;

  return ListTile(
    leading: Icon(
      icon,
      color: colorData,
      size: 25,
    ),
    title: Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: colorData,
      ),
    ),
    onTap: onClicked,
  );
}
