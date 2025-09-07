import 'package:flutter/material.dart';
import 'package:mirai_it/meta.dart';

class ReaderPage extends StatefulWidget {
  final PageReaderType type;

  const ReaderPage({super.key, required this.type});

  @override
  State<ReaderPage> createState() => _ReaderState();
}

class _ReaderState extends State<ReaderPage> {
  List<Image> pageImages = [
    Image.network(
      "https://dc.mangamirai.com/products/BT000171206201601602/v1/contents/2.jpg?ver=b89acdc50d0feaf60732f1e9a5000cd8717de0f14e6a6de7eea47bda372edb41&Expires=1757279318&Signature=h5X9EzWqk0Q53iKfWVEVYHZb35TA0728h3K68O9e9cj2NfxnfvP371T-7epPiHfJjUYRDLzLr6o7TnVmZaDOTHQVl3L617FEtKHa2uSWJW8erGOQ93gHdEkSB3gq-oFhfByvV7u1By6tljJkDHjrlg9uuEK-L6uEaiy4ZEgT8uoYoL~q~tXEcnf1ukALnniH5s-yUr~L8wCNYA2LPi~-Yk1OhVfoF1IHhuXQ8fRMhJSV9CjiKGhHI7sBKPAUAXv6XtIwqIkREbWL~PueqQDTZeyAFJhVke3hC8RAXcurQ6gxuaJY8rHUP3t-807UIzeaT1rYHB6Ymo9uC1FbZAEjpA__&Key-Pair-Id=K2KUUDW2ZDG6HZ",
    ),
    Image.network(
      "https://dc.mangamirai.com/products/BT000171206201601602/v1/contents/3.jpg?ver=b89acdc50d0feaf60732f1e9a5000cd8717de0f14e6a6de7eea47bda372edb41&Expires=1757279318&Signature=ebLMdlPJnMmfvbg0TEB8NC~4-msrXWhZ3blV~fNwgn5qLnRz~ViAJuQ-JgWFjXNjViq6o-A9uVVaBQLTCMNqZ04DuyG-sQ2JdEgy5sjYCb75MfGeARf87hnin1L~CntPUYC8D2AE3XoKSAo-aYQkkwHUVrOKluZ-lYjf06EoiAWUrfvS9lZ5IP1-5EIoYBSml5dSxU1cucEmoViC7cx4VhB4GepAicYuD-LGZ-VDeN6QP4D3yBSU6Z~kK3ZVr0COdsTSwtDO3RDO4SkD-Vi0p6v7AY4OPBd0v1bWzjq4hHxx5fexr-SOmdbSjXSUQtI3g-m6lwFYTcSP1RPSE3WT2w__&Key-Pair-Id=K2KUUDW2ZDG6HZ",
    ),
  ];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case PageReaderType.topToBottom:
        return Column(children: pageImages);
      case PageReaderType.leftToRight:
        return pageImages[currentPage];
      case PageReaderType.rightToLeft:
        return pageImages[currentPage];
    }
  }
}
