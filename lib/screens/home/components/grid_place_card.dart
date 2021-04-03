import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/responsive.dart';
import 'package:travel_ui_app/util.dart';

import 'liked_button.dart';

class GridPlaceCard extends StatelessWidget {
  const GridPlaceCard({
    Key key,
    @required this.place,
    @required this.tapEvent,
  }) : super(key: key);

  final Place place;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapEvent,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        child: Stack(
          children: [
            Hero(
              tag: place.id,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  place.image,
                  width: double.infinity,
                  height: isTab(context) ? 400 : 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: double.infinity,
                  height: isTab(context) ? 120 : 70,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: cardInfoDecoration,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: isTab(context) ? null : 100.0,
                            child: Text(place.name,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: isTab(context) ? 24 : 12,
                                    fontWeight: FontWeight.w700)),
                          ),
                          const Spacer(),
                          const LikedButton()
                        ],
                      ),
                      SmoothStarRating(
                        allowHalfRating: false,
                        onRated: (v) {},
                        rating: place.rating,
                        size: isTab(context) ? 35 : 15,
                        isReadOnly: true,
                        color: kRatingStarColor,
                        borderColor: kRatingStarColor,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
