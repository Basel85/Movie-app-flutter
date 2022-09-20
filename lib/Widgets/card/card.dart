import 'package:flutter/material.dart';
import 'package:movie_app/noImage.dart';

class WorkCard extends StatelessWidget {
  final _imageUrl;
  final _title;
  final _vote_average;
  WorkCard(this._imageUrl,this._title,this._vote_average);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: _imageUrl==null?NoImage():Image.network(
                _imageUrl,fit: BoxFit.cover,
              )),
        ),
        Text(_title,
          style: Theme.of(context).textTheme.subtitle2,overflow: TextOverflow.ellipsis,maxLines: 1,),
        Row(
          children: [
            Expanded(
              child: Text(
                "1h 37m",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            Text(
              "${_vote_average}",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        )
      ],
    );
  }
}
