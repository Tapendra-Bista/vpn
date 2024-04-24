import 'package:flutter/material.dart';
import 'package:vpn/common/boxdecoration.dart';
import 'package:vpn/common/mytext.dart';

Future<dynamic> smb(BuildContext context) {
  return showModalBottomSheet(
      isScrollControlled: false,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      context: context,
      builder: (context) {
        return SizedBox(
          height: 350,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              width: double.infinity,
              decoration: boxDecoration,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Select one",
                      style: bodyStyle.copyWith(fontSize: 28),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Colors.black26.withOpacity(0.3),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 200,
                        width: 168,
                        decoration: boxDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.file_open_outlined,
                                size: 100, color: Colors.blue),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "FILE",
                              style: bodyStyle,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        width: 168,
                        decoration: boxDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.camera_alt_outlined,
                              size: 100,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "CAMERA",
                              style: bodyStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
