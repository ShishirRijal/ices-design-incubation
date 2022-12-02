import 'package:flutter/material.dart';
import 'package:ices_desgin_incubation/utils/font_manager.dart';

import '../../modles/apartment.dart';

class DetailScreen extends StatefulWidget {
  final Apartment apartment;
  const DetailScreen({
    Key? key,
    required this.apartment,
  }) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  var _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mediaQuery.height,
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Hero(
                                    tag: widget.apartment.id,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.asset(
                                        widget.apartment.imageAddress,
                                        fit: BoxFit.cover,
                                        height: mediaQuery.height * 0.42,
                                        width: double.infinity,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 30.0,
                                    left: 10.0,
                                    child: IconBox(
                                      icon: Icons.arrow_back_ios_rounded,
                                      onPressed: () => Navigator.pop(context),
                                    ),
                                  ),
                                  Positioned(
                                      top: 30.0,
                                      right: 10.0,
                                      child: const FavouriteButton()),
                                ],
                              ),
                              const SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.apartment.city,
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                  const Spacer(),
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 35.0,
                                        height: 35.0,
                                        decoration: BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Text(
                                          widget.apartment.rating.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5.0),
                                      Text(
                                        "${widget.apartment.ratingCount.toString()}  ratings",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                widget.apartment.address,
                                style: getRegularTextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 8.0),
                              SizedBox(
                                height: 30.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: const PageScrollPhysics(),
                                  children: [
                                    IconText(
                                        icon: Icons.bedroom_child,
                                        title:
                                            widget.apartment.beds.toString()),
                                    const SizedBox(width: 10.0),
                                    IconText(
                                        icon: Icons.bathtub,
                                        title:
                                            widget.apartment.baths.toString()),
                                    const SizedBox(width: 10.0),
                                    IconText(
                                        icon: Icons.aspect_ratio_outlined,
                                        title:
                                            "${widget.apartment.area}m area"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              GestureDetector(
                                onTap: () => setState(() {
                                  _isExpanded = !_isExpanded;
                                }),
                                child: Text(
                                  "A fully furnished room with sunlight facing door and two windows built at the face of Chipledhunga bazar....",
                                  style: getRegularTextStyle(
                                      color: Colors.black87),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: _isExpanded ? 100 : 2,
                                ),
                              ),
                              const SizedBox(height: 15.0),
                              SizedBox(
                                height: 100.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  physics: const PageScrollPhysics(),
                                  children: [
                                    SizedBox(
                                      height: 100.0,
                                      width: 120.0,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          'assets/images/bedroom.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    SizedBox(
                                      height: 100.0,
                                      width: 120.0,
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image.asset(
                                          'assets/images/kitchen.jpg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          image: const DecorationImage(
                                            colorFilter: ColorFilter.mode(
                                                Colors.white54,
                                                BlendMode.lighten),
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/hall.jpg',
                                            ),
                                          ),
                                        ),
                                        height: 100.0,
                                        width: 120.0,
                                        child: Text("+7",
                                            style: getRegularTextStyle())),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 100.0,
                              ),
                            ],
                          ),
                          Positioned(
                            top: mediaQuery.height * 0.39,
                            child: Container(
                              alignment: Alignment.center,
                              width: mediaQuery.width * 0.6,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text(
                                "Virtual Tour",
                                style: getRegularTextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 10.0,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  alignment: Alignment.center,
                  width: mediaQuery.width * 0.9,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Rs. 4000", style: getRegularTextStyle()),
                          const SizedBox(height: 3.0),
                          Text(
                            "Total Price",
                            style: getLightTextStyle(),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // well, buy me a apartment :)
                        },
                        child: const Text(
                          "Rent Now",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({
    Key? key,
  }) : super(key: key);
  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _colorAnimation;
  late Animation _sizeAnimation;
  bool _isSelected = false;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _colorAnimation =
        ColorTween(begin: Colors.grey, end: Colors.red).animate(_controller);
    _controller.addListener(() {
      setState(() {});
    });

    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(tween: Tween(begin: 30.0, end: 60.0), weight: 50),
        TweenSequenceItem(tween: Tween(begin: 60.0, end: 30.0), weight: 50),
      ],
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _isSelected = true;
      } else {
        _isSelected = false;
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _isSelected ? _controller.reverse() : _controller.forward();
      },
      child: Container(
        height: 45.0,
        width: 45.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(
          Icons.favorite_rounded,
          size: _sizeAnimation.value,
          color: _colorAnimation.value,
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String title;
  const IconText({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30.0,
          color: Colors.black,
        ),
        const SizedBox(width: 3.0),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 18.0,
            // fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class IconBox extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isSelected;
  const IconBox({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 45.0,
        width: 45.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Icon(
          icon,
          size: 30.0,
          color: isSelected ? Colors.red : Colors.black,
        ),
      ),
    );
  }
}
