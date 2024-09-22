import 'package:flutter/material.dart';
import 'package:quiz_app/features/quiz/presentation/models/category_model.dart';
import 'package:quiz_app/features/quiz/presentation/views/widgets/section_item_widget.dart';

class QuizViewGridView extends StatelessWidget {
  const QuizViewGridView({
    super.key,
    required this.categoryList,
    required this.sectionsList,
  });

  final List<CategoryModel> categoryList;
  final List<Widget> sectionsList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 40,
      ),
      itemCount: categoryList.length,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemBuilder: (context, i) {
        return SectionsItemWidget(
            categoryItem: categoryList[i], sections: [sectionsList[i]]);
      },
    );
  }
}
