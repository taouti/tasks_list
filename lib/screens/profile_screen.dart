import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          elevation: 0,
          expandedHeight: 180,
          collapsedHeight: kToolbarHeight,
          backgroundColor: KMainColor,

          ///to set the cover image
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  bottom: 60,
                  right: 40,
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 72.0,
                          height: 72.0,
                          color: Colors.white60,
                          child:
                              const Center(child: Icon(CupertinoIcons.person)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 23.0),
                        child: Text(
                          "رزح المرزوح",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -1.0,
                  child: Container(
                    height: 20,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        color: Theme.of(context).scaffoldBackgroundColor),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              ListTile(
                title: const Text("معلومات الحساب"),
                textColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.envelope),
                title: const Text("البريد الإلكتروني"),
                trailing: const Icon(CupertinoIcons.forward),
                iconColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.lock),
                title: const Text("كلمة المرور"),
                trailing: const Icon(CupertinoIcons.forward),
                iconColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.phone),
                title: const Text("رقم الهاتف"),
                trailing: const Icon(CupertinoIcons.forward),
                iconColor: Theme.of(context).primaryColor,
              ),
              Divider(
                thickness: 2.0,
                indent: 16,
                endIndent: 16,
              ),
              ListTile(
                title: const Text("معلومات مهمة"),
                textColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.info),
                title: const Text("كيف يعمل هذا التطبيق"),
                trailing: const Icon(CupertinoIcons.forward),
                iconColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.bubble_left_bubble_right),
                title: const Text("مركز الدعم"),
                trailing: const Icon(CupertinoIcons.forward),
                iconColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.xmark_seal),
                title: const Text("الإبلاغ عن مشكلة"),
                trailing: const Icon(CupertinoIcons.forward),
                iconColor: Theme.of(context).primaryColor,
              ),
              Divider(
                thickness: 2.0,
                indent: 16,
                endIndent: 16,
              ),
              ListTile(
                title: const Text("معلومات أخرى"),
                textColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.arrowshape_turn_up_left),
                title: const Text("مشاركة مع الأصدقاء"),
                iconColor: Theme.of(context).primaryColor,
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.arrow_left_square),
                title: const Text("تسجيل الخروج"),
                iconColor: Theme.of(context).primaryColor,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const Text(
                      "Masrof-dz.com",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                    Text(
                      "v1.0.1",
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
