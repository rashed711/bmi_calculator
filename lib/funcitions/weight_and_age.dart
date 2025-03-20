import 'package:flutter/material.dart';

Container buildWeightOrAgeContainer({
required String titel,
required int value,
required VoidCallback addfunciton,
required VoidCallback removefunction,


}) {
    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            titel,
                            style: TextStyle(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            value.toString(),
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FloatingActionButton.small(
                                onPressed: addfunciton,
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                                child: Icon(Icons.add, color: Colors.black),
                              ),

                              FloatingActionButton.small(
                                onPressed: removefunction,
                                backgroundColor: Colors.white,
                                shape: CircleBorder(),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
  }


