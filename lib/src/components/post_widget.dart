import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_coding/src/components/avatar_widget.dart';
import 'package:instagram_clone_coding/src/components/image_data.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _header(),
          SizedBox(
            height: 15,
          ),
          _image(),
          SizedBox(
            height: 15,
          ),
          _infoCount(),
          SizedBox(
            height: 5,
          ),
          _infoDescription(),
          SizedBox(
            height: 5,
          ),
          _replyTextBtn(),
          SizedBox(
            height: 5,
          ),
          _dateAgo(),
        ],
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          AvatarWidget(
              nickname: 'seonwookkim',
              size: 40,
              thumbPath:
                  'https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg',
              type: AvatarType.TYPE3),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageData(
                IconsPath.postMoreIcon,
                width: 30,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl: 'https://tinypng.com/images/social/website.jpg');
  }

  Widget _infoCount() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ImageData(
                IconsPath.likeOffIcon,
                width: 65,
              ),
              SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.replyIcon,
                width: 60,
              ),
              SizedBox(
                width: 15,
              ),
              ImageData(
                IconsPath.directMessage,
                width: 55,
              ),
            ],
          ),
          ImageData(
            IconsPath.bookMarkOffIcon,
            width: 50,
          ),
        ],
      ),
    );
  }

  Widget _infoDescription() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            '좋아요 15개',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          ExpandableText(
            '콘텐츠1입니다\n콘텐츠1입니다\n콘텐츠1입니다\n콘텐츠1입니다',
            prefixText: 'seonwookkim',
            onPrefixTap: () {
              print('seonwookkim 페이지 이동');
            },
            prefixStyle: const TextStyle(
              fontWeight: FontWeight.bold
            ),
            expandText: '더보기',
            collapseText: '접기',
            maxLines: 3,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            linkColor: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget _replyTextBtn() {
    return GestureDetector(
      onTap: () {

      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: const Text(
          '댓글 199개 모두 보기',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ),
    );
  }

  Widget _dateAgo() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        '1일전',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 11
        ),
      ),
    );
  }
}
