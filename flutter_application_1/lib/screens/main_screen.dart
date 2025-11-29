import 'package:flutter/material.dart';
import '../models/book_model.dart';
import '../widgets/book_card.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController _searchController = TextEditingController();
  int _currentIndex = 0;

  // Пример данных для рекомендаций
  final List<Book> _recommendedBooks = [
    Book(
      title: 'Мастер и Маргарита',
      author: 'Михаил Булгаков',
      coverColor: Color(0xFF8B4513),
      rating: 4.8,
    ),
    Book(
      title: '1984',
      author: 'Джордж Оруэлл',
      coverColor: Color(0xFF5D4037),
      rating: 4.7,
    ),
    Book(
      title: 'Три товарища',
      author: 'Эрих Мария Ремарк',
      coverColor: Color(0xFFA0522D),
      rating: 4.6,
    ),
    Book(
      title: 'Маленький принц',
      author: 'Антуан де Сент-Экзюпери',
      coverColor: Color(0xFFD2691E),
      rating: 4.9,
    ),
    Book(
      title: 'Преступление и наказание',
      author: 'Фёдор Достоевский',
      coverColor: Color(0xFF8D6E63),
      rating: 4.5,
    ),
    Book(
      title: 'Гордость и предубеждение',
      author: 'Джейн Остин',
      coverColor: Color(0xFFBCAAA4),
      rating: 4.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F0E6),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Верхняя часть с профилем и поиском
              Row(
                children: [
                  // Круглая кнопка личного кабинета
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0xFF8B4513),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF8B4513).withOpacity(0.3),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {
                        // Переход в личный кабинет
                        print('Переход в личный кабинет');
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  
                  // Поисковая строка
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.brown.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Поиск книг...',
                          hintStyle: TextStyle(
                            color: Color(0xFF8D6E63),
                            fontFamily: 'Georgia',
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF8B4513),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        onChanged: (value) {
                          // Логика поиска
                        },
                        onSubmitted: (value) {
                          // Обработка поискового запроса
                        },
                      ),
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 40),
              
              // Заголовок поиска
              Center(
                child: Text(
                  'ПОИСК КНИГ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF5D4037),
                    fontFamily: 'Georgia',
                    letterSpacing: 2,
                  ),
                ),
              ),
              
              SizedBox(height: 40),
              
              // Заголовок рекомендаций
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  'РЕКОМЕНДАЦИИ НА ОСНОВЕ ПОПУЛЯРНЫХ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B4513),
                    fontFamily: 'Georgia',
                    letterSpacing: 1,
                  ),
                ),
              ),
              
              SizedBox(height: 20),
              
              // Сетка рекомендаций
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.7,
                ),
                itemCount: _recommendedBooks.length,
                itemBuilder: (context, index) {
                  return BookCard(book: _recommendedBooks[index]);
                },
              ),
            ],
          ),
        ),
      ),
      
      // Нижняя навигационная панель
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.brown.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Color(0xFF8B4513),
          unselectedItemColor: Color(0xFF8D6E63),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: 'Обзор',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Закладки',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль',
            ),
          ],
        ),
      ),
    );
  }
}