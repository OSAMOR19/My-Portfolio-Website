import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:muzammil_hussain/extensions/context_ext.dart';

import '../../widgets/nav_bar.dart';
import '../../widgets/section_title.dart';
import '../home/views/footer_view.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AnimatedNavWrapper(
            child: Container(
              width: double.maxFinite,
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 200, left: 50, right: 50),
              constraints:
                  BoxConstraints(minHeight: MediaQuery.of(context).size.height),
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 1024),
                child: Column(
                  children: [
                    SectionTitle(
                      backgroundText: "ABOUT",
                      foreGroundText: "A Brief History of Isaac Osamor",
                      subTitle: "Bio",
                    ),
                    SizedBox(height: 140),
                    context.isTablet || context.isMobile
                        ? _mobileView(context)
                        : _largeView(context),
                  ],
                ),
              ),
            ),
          ),
          FooterView(),
        ],
      ),
    );
  }

  Widget _largeView(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Entry.offset(
          yOffset: -400,
          delay: Duration(milliseconds: 300),
          duration: Duration(seconds: 2),
          child: Container(
            width: 300, // Set a fixed width
            height: 300, // Set a fixed height
            decoration: BoxDecoration(
              gradient: RadialGradient(
                radius: 0.6,
                colors: [
                  Theme.of(context).colorScheme.secondary,
                  Colors.white,
                ],
              ),
            ),
            child: Image.asset(
              'assets/images/me.png',
              fit: BoxFit.cover, // Ensure the image covers the container
            ),
          ),
        ),
        SizedBox(width: 50),
        Expanded(
          child: Entry.offset(
            yOffset: 400,
            delay: Duration(milliseconds: 300),
            duration: Duration(seconds: 2),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "A BRIEF PROFILE OF ISAAC OSAMOR",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontFamily: "Goku",
                        ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Osamor Isaac, a seasoned Full Stack Software Developer and Blockchain Developer with extensive experience in building both Web2 and Web3 applications. My expertise spans a broad spectrum of technologies, enabling me to create seamless, scalable, and innovative digital solutions. Proficient in modern programming languages and frameworks, including JavaScript, React, Dart/Flutter, and more, I possess a deep understanding of both frontend and backend development, ensuring that I deliver end-to-end solutions that are not only robust but also intuitive and user-friendly.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "In the realm of Web2, I have a proven track record of developing responsive, high-performance websites and applications. Whether working on dynamic single-page applications or complex data-driven platforms, I focus on writing clean, maintainable code and providing smooth user experiences across various devices. My experience extends into Web3 technologies, where I excel in smart contract development, decentralized applications (dApps), and distributed ledger technologies. With a solid grasp of the principles that drive blockchain ecosystems, I ensure the creation of secure, efficient, and scalable blockchain solutions.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "In essence, Isaac Osamor is a passionate developer committed to excellence. He understands that each project is a chance to become better, welcoming feedback and constructive criticism as stepping stones to further development.",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Column _mobileView(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200, // Set a fixed width for mobile
          height: 200, // Set a fixed height for mobile
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.6,
              colors: [
                Theme.of(context).colorScheme.secondary,
                Colors.white,
              ],
            ),
          ),
          child: Image.asset(
            'assets/images/me.png',
            fit: BoxFit.cover, // Ensure the image covers the container
          ),
        ),
        SizedBox(height: 50),
        Text(
          "A BRIEF PROFILE OF MUZAMMIL",
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontFamily: "Goku",
                fontSize: 18,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          "Muzammil Hussain is a mobile application developer based in Pakistan, specializing in Hybrid Mobile Apps Development using Flutter. As a dedicated freelancer, he continually seeks new opportunities to enhance his skills.",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w400,
                fontSize: 12,
              ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "Acknowledging that he's on a journey of continuous improvement, Muzammil understands that his earlier projects may not fully reflect his current expertise. Nevertheless, he values the lessons learned from these experiences and views them as opportunities for growth.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Text(
          "In essence, Muzammil Hussain is a passionate developer committed to excellence. He understands that each project is a chance to become better, welcoming feedback and constructive criticism as stepping stones to further development.",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}