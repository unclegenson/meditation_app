import 'dart:collection';

import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  IconData favIcon = Icons.favorite_border;
  IconData saveIcon = Icons.bookmark_border;
  IconData volumeIcon = Icons.volume_up;
  int likeCount = 122;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              centerTitle: true,
              title: const Text(
                'Indoor Relax',
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 39, 44, 74),
                  fontWeight: FontWeight.w800,
                  fontFamily: 'serif',
                ),
              ),
              backgroundColor: Colors.grey[200],
              toolbarHeight: 80,
              floating: true,
              snap: true,
              pinned: true,
              expandedHeight: size.height * 3.5 / 5,
              leadingWidth: 80,
              leading: InkWell(
                onTap: () {
                  saveIcon == Icons.bookmark_border
                      ? setState(() {
                          saveIcon = Icons.bookmark;
                        })
                      : setState(() {
                          saveIcon = Icons.bookmark_border;
                        });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.white),
                    width: 60,
                    height: 60,
                    child: Icon(
                      saveIcon,
                      size: 28,
                      color: Color.fromARGB(255, 183, 178, 76),
                    ),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      volumeIcon == Icons.volume_up
                          ? setState(() {
                              volumeIcon = Icons.volume_off;
                            })
                          : setState(() {
                              volumeIcon = Icons.volume_up;
                            });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(500),
                          color: Colors.white),
                      width: 60,
                      height: 60,
                      child: Icon(
                        volumeIcon,
                        size: 28,
                        color: Color.fromARGB(255, 183, 178, 76),
                      ),
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      'assets/images/3.jpg',
                      height: size.height * 4 / 5,
                      fit: BoxFit.fitHeight,
                    ),
                    Container(
                      width: size.width,
                      height: 30,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Color.fromARGB(255, 39, 44, 74),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 80, 85, 113),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        width: 60,
                        height: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return index == 0
                      ? SizedBox(
                          height: size.height / 3,
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Container(
                                      width: size.width,
                                      height: size.height / 3,
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 39, 44, 74),
                                      ),
                                    ),
                                    Positioned(
                                      top: 20,
                                      left: 0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              const Text(
                                                'Indoor Relax | part 1',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width / 2.8,
                                              ),
                                              Text(
                                                likeCount.toString(),
                                                style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 183, 178, 76),
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  favIcon ==
                                                          Icons.favorite_border
                                                      ? setState(() {
                                                          favIcon =
                                                              Icons.favorite;
                                                          likeCount += 1;
                                                        })
                                                      : setState(() {
                                                          favIcon = Icons
                                                              .favorite_border;
                                                          likeCount -= 1;
                                                        });
                                                },
                                                icon: Icon(
                                                  favIcon,
                                                  color: Color.fromARGB(
                                                      255, 183, 178, 76),
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                width: size.width,
                                                height: 40,
                                                child: Slider(
                                                  thumbColor: Colors.orange,
                                                  activeColor:
                                                      Colors.blueAccent,
                                                  value: .3,
                                                  onChanged: (value) {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: size.width,
                                            height: 15,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 28),
                                              child: Row(
                                                children: const [
                                                  Text(
                                                    '4.20',
                                                    // todo edit when video playes
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Text(
                                                    '15.26',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 60,
                                            width: size.width,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.first_page,
                                                      color: Colors.white,
                                                      size: 45,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.pause_circle,
                                                      color: Color.fromARGB(
                                                          255, 183, 178, 76),
                                                      size: 45,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  IconButton(
                                                    onPressed: () {},
                                                    icon: const Icon(
                                                      Icons.last_page,
                                                      color: Colors.white,
                                                      size: 45,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      : Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.grey[300],
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.play_circle,
                                  size: 27,
                                  color: Colors.blueAccent.withOpacity(0.7),
                                ),
                                onPressed: () {},
                              ),
                              title: Text(
                                "Indoor Relax | part $index",
                                style: const TextStyle(fontSize: 16),
                              ),
                              subtitle: const Text(
                                "Relax | 15 minutes",
                                // style: TextStyle(fontSize: 16),
                              ),
                            ),
                            const Divider(
                              indent: 30,
                              endIndent: 30,
                              thickness: 1,
                            )
                          ],
                        );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
