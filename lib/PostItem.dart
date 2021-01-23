import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social/data.dart';
import 'package:http/http.dart' as http;
import 'package:video_player/video_player.dart';


class PostItem extends StatefulWidget {

  final String type;
  final String dp;
  final String name;
  final String time;
  final String img;
  final String video;
  final String title;

  PostItem({
    Key key,
    @required this.type,
    @required this.dp,
    @required this.name,
    @required this.time,
    @required this.img,
    @required this.title,
    @required this.video
  }) : super(key: key);


  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  int i=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: InkWell(
        child:Container(
      child: Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
      onTap: () {
//                  Navigator.of(context)
//                      .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
//                    return new ProductDetailsScreen(photos[index].id);
//                  }));
      },

  child:      Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "${widget.dp}",
                ),
              ),

              contentPadding: EdgeInsets.all(5),
              title: Text(
                "${widget.name}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

            ),

            CachedNetworkImage(
              imageUrl:"${widget.img}",
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),


    //         SizedBox(
    //
    //       if(i==1)
    //         {
    //           Image();
    //         }
    //       else
    //         Vide();
    // ),


          ],
        ),
      ),
    ),
    ),
      ),
    );
  }

  Widget Image()
  {
    return  CachedNetworkImage(
      imageUrl:"${widget.img}",
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
    );
  }
/*
 Widget Vide()
  
  {
return
  VideoPlayerController.network(

  videoUrl: "${widget.video}"
      fit :BoxFit.cover,
  widget:MediaQuery.of(context).size.width,
//)

 }
*/

}
