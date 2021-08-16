import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class ReviewsTile extends StatelessWidget {
  const ReviewsTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          child: Row(
            children: [
              Container(
                child: Image.network(
                  "https://images-na.ssl-images-amazon.com/images/I/71H0XjpOZPL._SL1500_.jpg",
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 05,
                      top: 0,
                    ),
                    width: MediaQuery.of(context).size.width / 5,
                    child: Text(
                      "Samsung Galaxy M42 5G (Prism Dot Gray, 6GB RAM0",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      left: 05,
                      top: 20,
                    ),
                    child: RatingBar.readOnly(
                      initialRating: 3.5,
                      isHalfAllowed: true,
                      halfFilledIcon: Icons.star_half,
                      filledIcon: Icons.star,
                      size: 14,
                      emptyIcon: Icons.star_border,
                      filledColor: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 0.3,
          color: Colors.black12.withOpacity(0.2),
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(left: 60),
        ),
      ],
    );
  }
}
