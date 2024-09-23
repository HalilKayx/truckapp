import 'package:flutter/material.dart';
import 'package:truckapp/constants/mainConstants.dart';

class LoginTop extends StatelessWidget {
  const LoginTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      MainConstants.sizeBox15px,
      const Icon(
        Icons.track_changes,
        size: 75,
        color: Colors.white,
      ),
      MainConstants.sizeBox15px,
      const Text(
        'Yüküm Nerde? Uygulamasına Hoşgeldin.',
        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 0,
      ),
      Container(
        padding: const EdgeInsets.all(15),
        child: const Text(
          'Yükünüzü takip etmek ve yönetmek için doğru yerdesiniz. Güvenli ve hızlı taşımacılık deneyimi için buradayız. Hadi başlayalım!',
          style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,
        ),
      ),
      const SizedBox(
        height: 25,
      )
    ]);
  }
}
