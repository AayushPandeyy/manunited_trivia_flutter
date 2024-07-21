import 'package:manunited_trivia/utilities/GeneralKnowledgeQuestions.dart';
import 'package:manunited_trivia/utilities/TrophiesQuestions.dart';
import 'package:manunited_trivia/widgets/QuizBox.dart';

class CarouselItems {
  var items1 =  [
    QuizBox(title: "General Knowledge", number: "20",questions: GeneralKnowledgeQuestions.generalKnowledgeQuestions,),
    // QuizBox(title: "Seasonal Performance", number: "10"),
    // QuizBox(title: "Player Stats", number: "30"),
    // QuizBox(title: " Historical Moments", number: "30"),
    // QuizBox(title: "Match Results", number: "30"),
    // QuizBox(title: "Trivia Quiz", number: "30"),
    // QuizBox(title: "Legends ", number: "30"),
    // QuizBox(title: "Stadium", number: "30"),
    QuizBox(title: "Trophies and Titles", number: "30",questions: TrophiesQuestions.trophyQuestions,),
    // QuizBox(title: "Managerial Quiz", number: "30"),
    // QuizBox(title: "Transfers and Signings", number: "30"),
  ];
}
