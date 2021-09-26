import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Bounceable(
            onTap: () {},
            scaleFactor: 0.5,
            child: const Icon(
              Icons.search,
              size: 28,
            ),
          ),
          const SizedBox(width: 20),
          Bounceable(
            onTap: () {},
            scaleFactor: 0.5,
            child: const Icon(
              Icons.shopping_bag_outlined,
              size: 28,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      // body: ListView(
      //   children: [
      //     const Padding(
      //       padding: EdgeInsets.symmetric(
      //         horizontal: 25,
      //         vertical: 15,
      //       ),
      //       child: Text(
      //         "What's New",
      //         style: TextStyle(
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 25),
      //       child: Bounceable(
      //         onTap: () {},
      //         child: PhysicalModel(
      //           color: Colors.black,
      //           borderRadius: BorderRadius.circular(14),
      //           elevation: 20,
      //           child: ClipRRect(
      //             borderRadius: BorderRadius.circular(14),
      //             child: Stack(
      //               children: [
      //                 Image.network(
      //                   "https://cdn.redmondpie.com/wp-content/uploads/2021/06/ios-15-wallpapers-download-1200.jpg",
      //                   fit: BoxFit.cover,
      //                   height: 400,
      //                 ),
      //                 Container(
      //                   height: 400,
      //                   padding: const EdgeInsets.symmetric(
      //                     horizontal: 25,
      //                     vertical: 20,
      //                   ),
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         "Get started".toUpperCase(),
      //                         style: TextStyle(
      //                           color: Colors.grey[200],
      //                           fontWeight: FontWeight.w600,
      //                         ),
      //                       ),
      //                       const SizedBox(height: 5),
      //                       const Text(
      //                         "What's new for apps in iOS 15",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold,
      //                           fontSize: 26,
      //                         ),
      //                       ),
      //                       const Spacer(),
      //                       const Text(
      //                         "Safari extension, Focus, notification summary and more.",
      //                         style: TextStyle(
      //                           color: Colors.white,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Bounceable(
                onTap: () {},
                child: PhysicalModel(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(14),
                  elevation: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Stack(
                      children: [
                        Image.network(
                          "https://cdn.redmondpie.com/wp-content/uploads/2021/06/ios-15-wallpapers-download-1200.jpg",
                          fit: BoxFit.cover,
                          height: 400,
                        ),
                        Container(
                          height: 400,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Get started".toUpperCase(),
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "What's new for apps in iOS 15",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                              const Spacer(),
                              const Text(
                                "Safari extension, Focus, notification summary and more.",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Bounceable(
              scaleFactor: 0.6,
              onTap: () {},
              child: Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            Bounceable(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  width: 350,
                  height: 50,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text(
                      "Click Me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Bounceable(
              scaleFactor: 0.6,
              onTap: () {},
              child: const Text(
                "Click Me",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
