import 'package:dev_series/helpers/iconhelper.dart';
import 'package:dev_series/pages/categoryListPage.dart';
import 'package:dev_series/widgets/iconfotn.dart';
import 'package:flutter/material.dart';

import '../helpers/appcolors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.3,
              child: Image.asset(
                'assets/images/of_main_bg.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: 180,
                      height: 180,
                      color: AppColors.MAIN_COLOR,
                      alignment: Alignment.center,
                      child: IconFont(
                        iconName: IconFontHelper.MAIN_LOGO,
                        color: Colors.white,
                        size: 130,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  'Bem Vindo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Produtos Frescos. \nSaudaveis e Naturais',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryListPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.all(25),
                        backgroundColor: AppColors.MAIN_COLOR),
                    child: const Text(
                      'Acessar Agora!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                        highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CategoryListPage()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.transparent,
                            border: Border.all(
                              color: AppColors.MAIN_COLOR,
                              width: 4,
                            ),
                          ),
                          child: const Text(
                            'Fazer Login',
                            style: TextStyle(
                                fontSize: 16,
                                color: AppColors.MAIN_COLOR,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
