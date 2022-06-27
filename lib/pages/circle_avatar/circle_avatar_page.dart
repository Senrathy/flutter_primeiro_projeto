import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Circle Avatar Gram'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message_outlined)
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            // Container(
            //   width: 100,
            //   height: 100,
            //   child: const CircleAvatar(
            //     backgroundImage: NetworkImage(
            //         'https://media-exp1.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_200_200/0/1601238197714?e=1658966400&v=beta&t=WtIfomaYw2D68-RnbCyd95rVXGPC3VwbCAtXcgWko1g'),
            //   ),
            // ),

            ImageAvatar(
                urlImage:
                    'https://media-exp1.licdn.com/dms/image/C4E03AQFsCnlCKnx_MA/profile-displayphoto-shrink_200_200/0/1601238197714?e=1658966400&v=beta&t=WtIfomaYw2D68-RnbCyd95rVXGPC3VwbCAtXcgWko1g'),

            ImageAvatar(
                urlImage:
                    'https://media-exp1.licdn.com/dms/image/C4E03AQGu84QjSdX2pQ/profile-displayphoto-shrink_200_200/0/1517431524682?e=2147483647&v=beta&t=lCm5FzEQdf_xedMgMsDxtYzR79BfUFJR91e3Y4nuw6Q'),
            ImageAvatar(
                urlImage:
                    'https://i.pinimg.com/280x280_RS/65/73/d3/6573d35fbc84f3cfd5d0cfb28536deb0.jpg'),
            ImageAvatar(
                urlImage:
                    'https://yt3.ggpht.com/ytc/AKedOLTpIz0IHf6sP0L7obm5J5_w9P3XeClW4dTsd875=s900-c-k-c0x00ffffff-no-rj'),
            ImageAvatar(
                urlImage:
                    'https://media-exp2.licdn.com/dms/image/C4E03AQHHInItPdAmuw/profile-displayphoto-shrink_800_800/0/1517395069332?e=1661385600&v=beta&t=NN8LdB6_4_jNZSJEJeOddksa-pLwMOKiwEJ0Tb4ncL4'),
          ],
        ),
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Colors.red,
                  Colors.purple,
                  Colors.blue,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.all(5),
            child: CircleAvatar(
              radius: 93,
              backgroundColor: Colors.black,
              backgroundImage: NetworkImage(urlImage),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: const Border(
                    top: BorderSide(
                        color: Colors.white38,
                        width: 1.5,
                        style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.white38,
                        width: 1.5,
                        style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.white38,
                        width: 1.5,
                        style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.white38,
                        width: 1.5,
                        style: BorderStyle.solid),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 0.1,
                        color: Colors.black,
                        spreadRadius: 1.3),
                  ],
                  gradient: const LinearGradient(
                    colors: [
                      Colors.purple,
                      Colors.red,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                padding: const EdgeInsets.all(5),
                height: 20,
                child: const Text(
                  'AO VIVO',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
