import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/item_tile.dart';
import '../widgets/filter_chip_widget.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        heading: 'Trending Outliers 0',
        subheading: 'Quantitative Strategy',
        isBookmarked: true),
    Item(
        heading: 'Booming Financial',
        subheading: 'Thematic Strategy',
        isBookmarked: false),
    Item(
        heading: 'Value Picker',
        subheading: 'Fundamental Strategy',
        isBookmarked: false),
    Item(
        heading: 'Strong TMT',
        subheading: 'Long term idea',
        isBookmarked: false),
    Item(
        heading: 'Vehicle Cell',
        subheading: 'Short term idea',
        isBookmarked: false),
    Item(
        heading: 'Trending Outliers 0',
        subheading: 'Quantitative Strategy',
        isBookmarked: true),
    Item(
        heading: 'Trending Outliers 0',
        subheading: 'Quantitative Strategy',
        isBookmarked: true),
    Item(
        heading: 'Trending Outliers 0',
        subheading: 'Quantitative Strategy',
        isBookmarked: true),
    Item(
        heading: 'Trending Outliers 0',
        subheading: 'Quantitative Strategy',
        isBookmarked: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Static Search Bar and Filters
          Container(
            padding: EdgeInsets.only(top: 44, left: 10, right: 10),
            color: Color.fromARGB(255, 33, 26, 42),
            child: Column(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 42, 33, 54),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.green),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search by Stock Name, Patterns...',
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.clear, color: Colors.green),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FilterChipWidget(label: 'All', isActive: true),
                    FilterChipWidget(label: 'Ideas'),
                    FilterChipWidget(label: 'Strategies'),
                    FilterChipWidget(label: 'This is scrollable'),
                    FilterChipWidget(label: 'Stocks'),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ]),
          ),
          // Scrollable List
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                Color backgroundColor = Color.fromARGB(255, 42, 33, 54);
                Color gapColor = Color.fromARGB(255, 33, 26, 42);

                return Column(
                  children: [
                    ItemTile(item: item, backgroundColor: backgroundColor),
                    Container(
                      height: 20, // Adjust gap height as needed
                      color: gapColor,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
