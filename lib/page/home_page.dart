import 'package:flutter/material.dart';
import '../widget/exercises_widget.dart';
import '../widget/line_chart_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
            const ExercisesWidget(),
          ],
        ),
      );
  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
    shape: const ContinuousRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
    ),
    elevation: 1,
    backgroundColor: Colors.white,
    flexibleSpace: FlexibleSpaceBar(
      background: LineChartWidget(),
    ),
    expandedHeight: MediaQuery.of(context).size.height * 0.30,
    stretch: true,
    title: const Text(
      'StepUp',
      style: TextStyle(
        color: Colors.orangeAccent,
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
    centerTitle: true,
    pinned: true,
  );
}
