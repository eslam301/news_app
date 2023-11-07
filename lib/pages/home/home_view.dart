
import 'package:flutter/material.dart';
import 'package:news_application/widgets/news_details_view.dart';
import '../../models/category_model.dart';
import '../../widgets/category_item.dart';
import '../../widgets/custom_drawer.dart';
class HomeView extends StatefulWidget {
  static const String routeName = '/home';
   HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CategoryModel> categories = [
    CategoryModel(
      categoryId: 'sports',
      categoryTitle: 'sports',
      categoryImage: 'assets/images/sports.png',
      categoryColor: const Color(0xffC91C22)
    ),
    CategoryModel(
      categoryId: 'general',
      categoryTitle: 'politics',
      categoryImage: 'assets/images/Politics.png',
      categoryColor: const Color(0xff003E90)
    ),
    CategoryModel(
      categoryId: 'health',
      categoryTitle: 'health',
      categoryImage: 'assets/images/health.png',
      categoryColor: const Color(0xffED1E79)
    ),
    CategoryModel(
      categoryId: 'business',
      categoryTitle: 'business',
      categoryImage: 'assets/images/bussines.png',
      categoryColor: const Color(0xffCF7E48)
    )
    ,
    CategoryModel(
      categoryId: 'environment',
      categoryTitle: 'environment',
      categoryImage: 'assets/images/environment.png',
      categoryColor: const Color(0xff4882CF)
    ),
    CategoryModel(
      categoryId: 'science',
      categoryTitle: 'science',
      categoryImage: 'assets/images/science.png',
      categoryColor: const Color(0xffF2D352)
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          selectedCategory == null ? 'News App': selectedCategory!.categoryTitle
        ),
      ),
      drawer:  CustomDrawer(onItemClick: onDrawerItemClick,),
      body: selectedCategory == null ?
      Container(
        padding: const EdgeInsets.all(35),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/pattern.png',),
            fit: BoxFit.cover,
          )
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text('Pick your category \n of interest',
              style: theme.textTheme.titleLarge?.copyWith(
                color: const Color(0xff4F5A69),

              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 9/11
                ),
                itemCount: categories.length,
                  padding: const EdgeInsets.all(20),
                  itemBuilder: (context, index) => CategoryItem(
                      index: index,
                      categoryModel: categories[index],
                    onItemClick: onCategoryItemClick,
                  ),
              ),
            ),
          ],
        ),
      ) :
      NewsDetailsView(categoryModel: selectedCategory!),
      );

  }

  CategoryModel? selectedCategory;

  onCategoryItemClick(CategoryModel categoryModel) {
    setState(() {
      selectedCategory = categoryModel;
    });


    print(categoryModel.categoryId);
  }
  onDrawerItemClick(){
    setState(() {
      selectedCategory = null;
    });
  }
}
