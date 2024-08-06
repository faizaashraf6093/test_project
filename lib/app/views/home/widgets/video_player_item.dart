import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  const VideoPlayerItem({super.key, required this.videoUrl});

  final String videoUrl;

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  late VideoPlayerController playerController;

  @override
  void initState() {
    super.initState();
    playerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
          ..initialize().then((value) {
            playerController.play();
            playerController.setVolume(1);
          });
  }

  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: VideoPlayer(playerController),
    );
  }
}
