import 'package:fitness_app/purchase_api.dart';
import 'package:flutter/material.dart';

import '../data/exercise_sets.dart';
import '../model/exercise_set.dart';
import 'exercise_set_widget.dart';

class ExercisesWidget extends StatefulWidget {
  const ExercisesWidget({super.key});

  @override
  _ExercisesWidgetState createState() => _ExercisesWidgetState();
}

class _ExercisesWidgetState extends State<ExercisesWidget> {
  ExerciseType selectedType = ExerciseType.low;

  @override
  Widget build(BuildContext context) => SliverPadding(
              padding: const EdgeInsets.all(0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 8),
                          const Text(
                            'Exercises',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                          const SizedBox(height: 8),
                          buildDifficultyLevel(),
                          const SizedBox(height: 8),
                          buildWorkouts(),
                          const SizedBox(height: 16),
                          const Center(
                            child: Text(
                              'Support us',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Center(
                            child: Text(
                              'We are constantly refining and developing the project: a new course has been written for you. We publish new information every month that will help you pump up your body.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 55,
                            decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                onTap: (){
                                  fetchOffers;
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context){
                                      return Container(
                                        height: MediaQuery.of(context).size.height * 0.80,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 8,
                                              width: double.infinity,
                                              decoration: const BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(20),
                                                ),
                                              ),
                                              margin: const EdgeInsets.symmetric(
                                                horizontal: 100,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Center(
                                              child: Text(
                                                'You can support us',
                                                style: TextStyle(
                                                  color: Colors.orangeAccent,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 24,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 16,
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context).size.height * 0.45,
                                              child: ListView(
                                                shrinkWrap: true,
                                                physics: const BouncingScrollPhysics(),
                                                children: [
                                                  Container(
                                                    height: 60,
                                                    margin: const EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 6,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue.shade100.withOpacity(0.6),
                                                      borderRadius: const BorderRadius.all(
                                                        Radius.circular(12),
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Subscribe - A week',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                          ),
                                                          Text(
                                                            '10\$',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    margin: const EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 6,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.yellowAccent.shade100.withOpacity(0.6),
                                                      borderRadius: const BorderRadius.all(
                                                        Radius.circular(12),
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Subscribe - A week',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                          ),
                                                          Text(
                                                            '25\$',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    margin: const EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 6,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.orange.shade100.withOpacity(0.6),
                                                      borderRadius: const BorderRadius.all(
                                                        Radius.circular(12),
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Subscribe - A week',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                          ),
                                                          Text(
                                                            '50\$',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    margin: const EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 6,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.purple.shade100.withOpacity(0.6),
                                                      borderRadius: const BorderRadius.all(
                                                        Radius.circular(12),
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Subscribe - A week',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                          ),
                                                          Text(
                                                            '100\$',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 60,
                                                    margin: const EdgeInsets.symmetric(
                                                      horizontal: 18,
                                                      vertical: 6,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: Colors.red.shade100.withOpacity(0.6),
                                                      borderRadius: const BorderRadius.all(
                                                        Radius.circular(12),
                                                      ),
                                                    ),
                                                    child: const Padding(
                                                      padding: EdgeInsets.all(16.0),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Subscribe - A week',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.w300,
                                                            ),
                                                          ),
                                                          Text(
                                                            '150\$',
                                                            style: TextStyle(
                                                              color: Colors.black,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
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
                                  );
                                },
                                child: const Center(
                                  child: Text(
                                    'Support us',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20,
                                    ),
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
              ),
            );

  Future fetchOffers() async {
    final offerings = await PurchaseApi.fetchOffers();

    final offer = offerings.first;
    print(offer);
  }

  Widget buildWorkouts() => GestureDetector(
        onHorizontalDragEnd: swipeFunction,
        child: Column(
          children: exerciseSets
              .where((element) => element.exerciseType == selectedType)
              .map(
                (exerciseSet) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseSetWidget(exerciseSet: exerciseSet)),
              )
              .toList(),
        ),
      );

  Widget buildDifficultyLevel() => Row(
        children: ExerciseType.values.map(
          (type) {
            final name = getExerciseName(type);
            final fontWeight = selectedType == type ? FontWeight.w800 : FontWeight.w400;

            return Expanded(
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => setState(() => selectedType = type),
                  child: AnimatedContainer(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                        color: selectedType == type ? Colors.black : Colors.transparent,
                      )
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    duration: const Duration(milliseconds: 380),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );

  void swipeFunction(DragEndDetails dragEndDetails) {
    final selectedIndex = ExerciseType.values.indexOf(selectedType);
    final hasNext = selectedIndex < ExerciseType.values.length;
    final hasPrevious = selectedIndex > 0;

    setState(() {
      if (dragEndDetails.primaryVelocity! < 0 && hasNext) {
        final nextType = ExerciseType.values[selectedIndex + 1];
        selectedType = nextType;
      }
      if (dragEndDetails.primaryVelocity! > 0 && hasPrevious) {
        final previousType = ExerciseType.values[selectedIndex - 1];
        selectedType = previousType;
      }
    });
  }
}
