import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.black, // Set the background color
        body: ColorfulSafeArea(
          color: Colors.black,
          child: Stack(
            children: [
              Column(
                children: [
                  // Top Row with Avatar and Follow Button
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                        ),
                        const Spacer(),
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                          child: const CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/profile1.jpg'),
                          ),
                        ),
                        const SizedBox(width: 15),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 0.1,
                          color: Colors.red,
                          onPressed: () {},
                          height: 48,
                          
                          minWidth: 80,
                          child: const Text(
                            'Follow',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // TabBar Section
                  Padding(
                    padding: const EdgeInsets.only(left: 45, right: 45),
                    child: TabBar(
                      dividerColor: Colors.black,
                      indicator: BoxDecoration(
                        color: Colors
                            .white, // Background color for the selected tab
                        borderRadius:
                            BorderRadius.circular(25), // Rounded corners
                      ),
                      labelColor:
                          Colors.black, // Text color for the selected tab
                      unselectedLabelColor:
                          Colors.grey, // Text color for unselected tabs
                      tabs: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 80, // Maximum width
                          ),
                          alignment: Alignment.center, // Center-align the text
                          child: const Text('Activity',
                              style: TextStyle(fontSize: 13)),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 100,
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Community',
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 80,
                            minHeight: 40,
                          ),
                          alignment: Alignment.center,
                          child: const Text('Shop',
                              style: TextStyle(fontSize: 13)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // DraggableScrollableSheet for swipe-up behavior
              DraggableScrollableSheet(
                initialChildSize: 0.8, // Initial height of the sheet
                minChildSize: 0.8, // Minimum height of the sheet when collapsed
                maxChildSize: 1.0, // Maximum height when fully expanded
                builder: (context, scrollController) {
                  return Container(
                    // height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30), // Curved on top-left
                        topRight: Radius.circular(30), // Curved on top-right
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Expanded(
                          child: TabBarView(
                            controller: DefaultTabController.of(context),
                            children: [
                              // Activity Screen with StaggeredGridView

                              SingleChildScrollView(
                                controller: scrollController,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Aligns the text to the left
                                  children: [
                                    // Text for the title
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'All Products',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    // StaggeredGridView
                                    StaggeredGridView.countBuilder(
                                      physics:
                                          const NeverScrollableScrollPhysics(), // Disable internal scrolling
                                      shrinkWrap:
                                          true, // Fit within SingleChildScrollView
                                      crossAxisCount:
                                          4, // Number of columns in the grid
                                      itemCount:
                                          10, // Total number of images/items
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/profile1.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                      },
                                      staggeredTileBuilder: (index) =>
                                          StaggeredTile.count(
                                              2,
                                              index.isEven
                                                  ? 2.8
                                                  : 2), // Define tile sizes
                                      mainAxisSpacing:
                                          8.0, // Spacing between rows
                                      crossAxisSpacing:
                                          8.0, // Spacing between columns
                                      padding: const EdgeInsets.all(
                                          8.0), // Grid padding
                                    ),
                                  ],
                                ),
                              )

                              // SingleChildScrollView(
                              //   controller: scrollController,
                              //   child: Container(
                              //     height: 800, // Example height
                              //     color: Colors.white,
                              //     child: const Center(
                              //       child: Text(
                              //         'Activity Screen',
                              //         style: TextStyle(
                              //           fontSize: 24,
                              //           color: Colors.black,
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              ,
                              SingleChildScrollView(
                                controller: scrollController,
                                child: Container(
                                  height: 800, // Example height
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      'Community Screen',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                controller: scrollController,
                                child: Container(
                                  height: 800, // Example height
                                  color: Colors.white,
                                  child: const Center(
                                    child: Text(
                                      'Shop Screen',
                                      style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
