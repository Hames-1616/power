import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class blobs extends StatefulWidget {
  const blobs({super.key});

  @override
  State<blobs> createState() => _blobsState();
}

class _blobsState extends State<blobs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Blob.animatedRandom(
 size:200,
 edgesCount:5,
 minGrowth:4,
 loop:  true,
),
        ),
      ),
    );
  }
}