
import 'package:bookly_app/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String? imageUrl;
  final double? radius;
  const CustomBookImage({super.key, required this.imageUrl,this.radius});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius??15),
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: CachedNetworkImage(
          imageUrl: imageUrl??kErrorImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


// Stack(
//   fit: StackFit.expand,
//   children: [
//     CachedNetworkImage(
//       imageUrl: imageUrl,
//       fit: BoxFit.cover,
//     ),
//     Align(
//       alignment: Alignment.bottomRight,
//       child: Padding(
//         padding: const EdgeInsets.all(10),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           child: BackdropFilter(
//             filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//             child: const SizedBox(
//               height: 40,
//               width: 40,
//               child: Icon(
//                 Icons.play_arrow_rounded,
//               ),
//             ),
//           ),
//         ),
//       ),
//     ),
//   ],
// ),