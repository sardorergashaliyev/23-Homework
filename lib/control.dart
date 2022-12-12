import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPages extends StatefulWidget {
  const MyPages({super.key});

  @override
  State<MyPages> createState() => _MyPagesState();
}

class _MyPagesState extends State<MyPages> {
  int indeks = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B4054),
      body: Column(
        children: [
          SizedBox(
            height: 670,
            child: PageView(
              onPageChanged: (value) {
                indeks = value;
                setState(() {});
              },
              children: [
                Column(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 70),
                    margin: const EdgeInsets.symmetric(horizontal: 45.5),
                    child: Image.asset('assets/2.png'),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Text(
                      'The Simple Way to find the best! 👌🏻',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                      'Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ]),
                Column(children: [
                  Container(
                    padding: const EdgeInsets.only(top: 100),
                    margin: const EdgeInsets.symmetric(horizontal: 45.5),
                    child: Image.asset('assets/3.png'),
                  ),
                  const SizedBox(height: 130),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, right: 80),
                    child: Text(
                      'The Simple Way to find the best! 👌🏻',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: Text(
                      'Aenean eu lacinia ligula. Quisque eu risus erat. Aenean placerat sollicitudin lectus.',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ])
              ],
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const SizedBox(width: 150),
              Container(
                height: 4,
                width: 32,
                decoration: BoxDecoration(
                  color: indeks == 0
                      ? const Color(0xff5D81FD)
                      : const Color(0xffD6DFFF),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                height: 4,
                width: 32,
                decoration: BoxDecoration(
                  color: indeks == 1
                      ? const Color(0xff5D81FD)
                      : const Color(0xffD6DFFF),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(2),
                  ),
                ),
              ),
              const SizedBox(width: 90),
              GestureDetector(
                onTap: () {
                  if (indeks == 0) {}
                },
                child: Container(
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Color(0xffC8D2DE)),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
