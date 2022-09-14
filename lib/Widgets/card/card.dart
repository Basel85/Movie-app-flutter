import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  final _imageUrl;
  final _title;
  final _vote_average;
  WorkCard(this._imageUrl,this._title,this._vote_average);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        margin: const EdgeInsets.only(right: 8,top: 8,bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  _imageUrl,
                )),
            Text(_title,
                style: Theme.of(context).textTheme.subtitle2,overflow: TextOverflow.ellipsis,),
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
        ),
    );
  }
}
