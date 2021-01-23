/*
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

import 'package:flutter_social/home.dart';


import 'package:flutter_social/PostItem.dart';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;


import 'package:flutter/foundation.dart';



class VideoPlayer extends StatefulWidget {



  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {

  VideoPlayerController _controller;
  Future<void> _initlizeVideoPlayerFuture;
  @override
  void initState() {
    _controller = VideoPlayerController.network("https://earnezy.in/android_shop/"+photos[index].filepath);



    _initlizeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);

    super.initState();
  }
@override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initlizeVideoPlayerFuture,
        builder: (context,snapshot){
          // ignore: missing_return
          if(snapshot.connectionState == ConnectionState.done){
            return AspectRatio(aspectRatio: _controller.value.aspectRatio,
           // ignore: missing_return
           child: VideoPlayer()
               );

          }
        }
      ),

    );
  }
}


 */