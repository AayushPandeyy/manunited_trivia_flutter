// ignore: file_names
class Questions {
  static List<Map<String, dynamic>> quizQuestions = [
    {
      'question': 'Who is Manchester United\'s all-time leading goal scorer?',
      'options': [
        'Wayne Rooney',
        'Bobby Charlton',
        'George Best',
        'Eric Cantona'
      ],
      'answer': 'Wayne Rooney',
      'points': 10,
    },
    {
      'question':
          'In which year did Manchester United win their first European Cup?',
      'options': ['1968', '1977', '1984', '1999'],
      'answer': '1968',
      'points': 15,
    },
    {
      'question':
          'Who managed Manchester United to their famous Treble in 1999?',
      'options': [
        'Sir Matt Busby',
        'Sir Alex Ferguson',
        'Ron Atkinson',
        'David Moyes'
      ],
      'answer': 'Sir Alex Ferguson',
      'points': 20,
    },
    {
      'question':
          'Which player has the most appearances for Manchester United?',
      'options': ['Ryan Giggs', 'Paul Scholes', 'Gary Neville', 'Roy Keane'],
      'answer': 'Ryan Giggs',
      'points': 10,
    },
    {
      'question': 'What is the name of Manchester United\'s home stadium?',
      'options': [
        'Old Trafford',
        'Anfield',
        'Etihad Stadium',
        'Stamford Bridge'
      ],
      'answer': 'Old Trafford',
      'points': 5,
    },
    {
      'question':
          'Which player won the Ballon d\'Or while playing for Manchester United in 2008?',
      'options': [
        'Cristiano Ronaldo',
        'Wayne Rooney',
        'David Beckham',
        'Eric Cantona'
      ],
      'answer': 'Cristiano Ronaldo',
      'points': 20,
    },
    {
      'question': 'Who was Manchester United\'s captain before Harry Maguire?',
      'options': [
        'Antonio Valencia',
        'Wayne Rooney',
        'Nemanja Vidic',
        'Michael Carrick'
      ],
      'answer': 'Antonio Valencia',
      'points': 10,
    },
    {
      'question':
          'Which team did Manchester United beat to win the 1999 UEFA Champions League Final?',
      'options': ['Juventus', 'Real Madrid', 'Bayern Munich', 'Barcelona'],
      'answer': 'Bayern Munich',
      'points': 25,
    },
    {
      'question':
          'How many Premier League titles has Manchester United won as of 2023?',
      'options': ['20', '18', '15', '13'],
      'answer': '20',
      'points': 15,
    },
    {
      'question':
          'Which legendary manager is often referred to as the architect of the Busby Babes?',
      'options': [
        'Sir Matt Busby',
        'Sir Alex Ferguson',
        'Ron Atkinson',
        'Tommy Docherty'
      ],
      'answer': 'Sir Matt Busby',
      'points': 20,
    },
  ];

  // Create a list of questions only
  List<String> questionsOnly =
      quizQuestions.map((quiz) => quiz['question'] as String).toList();

  List<List<String>> optionsOnly =
      quizQuestions.map((quiz) => quiz['options'] as List<String>).toList();

  List<int> correctAnswerIndexes = quizQuestions.map((quiz) {
    List<String> options = quiz['options'];
    String answer = quiz['answer'];
    return options.indexOf(answer);
  }).toList();
}
