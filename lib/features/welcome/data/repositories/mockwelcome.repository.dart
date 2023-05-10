import 'package:roman_web_portfolio/features/welcome/data/models/welcome_page.model.dart';
import 'package:roman_web_portfolio/features/welcome/data/repositories/iwelcome.repository.dart';

class MockWelcomeRepository implements IWelcomeRepository {

  @override
  Future<WelcomePageModel> getWelcomePageData() {
    
    return Future.delayed(const Duration(seconds: 2), () {
      return WelcomePageModel(
        name: 'Ayaan Pathan',
        title: 'Sr. Flutter Dev',
        subTitle: '',
        imgPath: 'https://avatars.githubusercontent.com/u/48903105?v=4',
        greetings: [
          "hello","hola", "bonjour", "ciao"
        ]
      );
    });
  }
}