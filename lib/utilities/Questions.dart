// ignore: file_names
class Questions {
  static List<Map<String, dynamic>> quizQuestions = [
    {
      'question':
          'Who was the top scorer for Manchester United in the 2023-2024 Premier League season?',
      'options': [
        'Marcus Rashford',
        'Bruno Fernandes',
        'Anthony Martial',
        'Mason Mount'
      ],
      'answer': 'Marcus Rashford',
      'points': 10,
      'info':
          'Marcus Rashford was the leading goal scorer for Manchester United in the Premier League, scoring 20 goals in the 2023-2024 season.',
    },
    {
      'question':
          'How many clean sheets did Manchester United keep in the 2023-2024 Premier League season?',
      'options': ['10', '12', '15', '18'],
      'answer': '15',
      'points': 15,
      'info':
          'Manchester United managed to keep 15 clean sheets in the 2023-2024 Premier League season, reflecting their solid defensive efforts.',
    },
    {
      'question':
          'Which player made the most assists for Manchester United in the 2023-2024 season?',
      'options': [
        'Bruno Fernandes',
        'Christian Eriksen',
        'Luke Shaw',
        'Jadon Sancho'
      ],
      'answer': 'Bruno Fernandes',
      'points': 10,
      'info':
          'Bruno Fernandes was the top assist provider for Manchester United, contributing 12 assists in the Premier League during the 2023-2024 season.',
    },
    {
      'question':
          'What was Manchester United\'s total goal tally in the 2023-2024 Premier League season?',
      'options': ['65', '70', '75', '80'],
      'answer': '70',
      'points': 20,
      'info':
          'Manchester United scored a total of 70 goals in the 2023-2024 Premier League season, showing a balanced attacking prowess.',
    },
    {
      'question':
          'How many yellow cards did Manchester United receive in the 2023-2024 Premier League season?',
      'options': ['50', '55', '60', '65'],
      'answer': '55',
      'points': 10,
      'info':
          'Manchester United received a total of 55 yellow cards during the 2023-2024 Premier League season, highlighting their aggressive play.',
    },
    {
      'question':
          'Which Manchester United player had the highest number of tackles in the 2023-2024 season?',
      'options': [
        'Casemiro',
        'Aaron Wan-Bissaka',
        'Lisandro Martínez',
        'Luke Shaw'
      ],
      'answer': 'Aaron Wan-Bissaka',
      'points': 15,
      'info':
          'Aaron Wan-Bissaka led Manchester United in tackles, showcasing his defensive skills with 85 tackles in the 2023-2024 season.',
    },
    {
      'question':
          'How many matches did Manchester United win in the 2023-2024 Premier League season?',
      'options': ['20', '22', '24', '26'],
      'answer': '22',
      'points': 20,
      'info':
          'Manchester United won 22 matches in the 2023-2024 Premier League season, reflecting a strong and consistent performance throughout the campaign.',
    },
    {
      'question':
          'Who had the highest pass completion rate for Manchester United in the 2023-2024 season?',
      'options': [
        'Christian Eriksen',
        'Casemiro',
        'Lisandro Martínez',
        'Bruno Fernandes'
      ],
      'answer': 'Christian Eriksen',
      'points': 15,
      'info':
          'Christian Eriksen had the highest pass completion rate for Manchester United, with a 92% success rate in the 2023-2024 season.',
    },
    {
      'question':
          'What was the total number of shots on target by Manchester United in the 2023-2024 Premier League season?',
      'options': ['150', '160', '170', '180'],
      'answer': '160',
      'points': 15,
      'info':
          'Manchester United had a total of 160 shots on target during the 2023-2024 Premier League season, indicating a potent attacking force.',
    },
    {
      'question':
          'Which player had the highest number of interceptions for Manchester United in the 2023-2024 season?',
      'options': [
        'Casemiro',
        'Lisandro Martínez',
        'Aaron Wan-Bissaka',
        'Luke Shaw'
      ],
      'answer': 'Lisandro Martínez',
      'points': 15,
      'info':
          'Lisandro Martínez recorded the highest number of interceptions for Manchester United, making 70 interceptions in the 2023-2024 season.',
    }
  ];

  // Create a list of questions only
  List<String> questionsOnly =
      quizQuestions.map((quiz) => quiz['question'] as String).toList();

  List<int> pointsOnly =
      quizQuestions.map((quiz) => quiz['points'] as int).toList();

  List<List<String>> optionsOnly =
      quizQuestions.map((quiz) => quiz['options'] as List<String>).toList();
  List<String> infoOnly =
      quizQuestions.map((quiz) => quiz['info'] as String).toList();

  List<int> correctAnswerIndexes = quizQuestions.map((quiz) {
    List<String> options = quiz['options'];
    String answer = quiz['answer'];
    return options.indexOf(answer);
  }).toList();
}
