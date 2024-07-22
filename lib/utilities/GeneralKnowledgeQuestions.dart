// ignore: file_names
import "dart:math";

 class GeneralKnowledgeQuestions {
  static Random random =  Random();
  static List<Map<String, dynamic>> generalKnowledgeQuestions = [
      {
    "question": "When was Manchester United founded?",
    "options": ["1878", "1888", "1898", "1908"],
    "answer": "1878",
    "points": 10,
    "info": "Manchester United was founded as Newton Heath LYR Football Club in 1878."
  },
  {
    "question": "Who is the most successful manager in Manchester United\"s history?",
    "options": ["Sir Alex Ferguson", "Matt Busby", "Tommy Docherty", "Ron Atkinson"],
    "answer": "Sir Alex Ferguson",
    "points": 10,
    "info": "Sir Alex Ferguson is the most successful manager in Manchester United\"s history, winning 38 trophies including 13 Premier League titles."
  },
  
  {
    "question": "In which year did Manchester United win their first European Cup?",
    "options": ["1968", "1978", "1988", "1998"],
    "answer": "1968",
    "points": 15,
    "info": "Manchester United won their first European Cup in 1968, defeating Benfica 4-1."
  },
  {
    "question": "Who scored the winning goal in the 1999 UEFA Champions League final?",
    "options": ["Ole Gunnar Solskjær", "Teddy Sheringham", "David Beckham", "Ryan Giggs"],
    "answer": "Ole Gunnar Solskjær",
    "points": 20,
    "info": "Ole Gunnar Solskjær scored the winning goal in the 93rd minute to secure a 2-1 victory over Bayern Munich."
  },
  {
    "question": "Which player holds the record for the most appearances for Manchester United?",
    "options": ["Ryan Giggs", "Paul Scholes", "Bobby Charlton", "Gary Neville"],
    "answer": "Ryan Giggs",
    "points": 10,
    "info": "Ryan Giggs made 963 appearances for Manchester United, the most by any player in the club\"s history."
  },
  {
    "question": "What is the seating capacity of Old Trafford?",
    "options": ["74,140", "80,000", "85,000", "90,000"],
    "answer": "74,140",
    "points": 5,
    "info": "Old Trafford has a seating capacity of approximately 74,140, making it the largest club football stadium in the UK."
  },
  {
    "question": "Who was the first Manchester United player to win the Ballon d\"Or?",
    "options": ["George Best", "Denis Law", "Bobby Charlton", "Cristiano Ronaldo"],
    "answer": "Denis Law",
    "points": 15,
    "info": "Denis Law was the first Manchester United player to win the Ballon d\"Or in 1964."
  },
  {
    "question": "In which year did Manchester United achieve the treble (Premier League, FA Cup, and UEFA Champions League)?",
    "options": ["1999", "2000", "2001", "2002"],
    "answer": "1999",
    "points": 20,
    "info": "Manchester United achieved the treble in 1999, winning the Premier League, FA Cup, and UEFA Champions League."
  },
  {
    "question": "Who was Manchester United\"s manager before Sir Alex Ferguson?",
    "options": ["Ron Atkinson", "Matt Busby", "Tommy Docherty", "Dave Sexton"],
    "answer": "Ron Atkinson",
    "points": 10,
    "info": "Ron Atkinson was the manager of Manchester United before Sir Alex Ferguson, serving from 1981 to 1986."
  },
  
  {
    "question": "How many Premier League titles has Manchester United won as of 2023?",
    "options": ["13", "15", "17", "20"],
    "answer": "13",
    "points": 15,
    "info": "Manchester United has won 13 Premier League titles since the league\"s inception in 1992."
  },
  {
    "question": "Who scored the most goals for Manchester United in a single Premier League season?",
    "options": ["Cristiano Ronaldo", "Wayne Rooney", "Ruud van Nistelrooy", "Robin van Persie"],
    "answer": "Cristiano Ronaldo",
    "points": 20,
    "info": "Cristiano Ronaldo scored 31 goals in the 2007-2008 Premier League season, the most by a Manchester United player in a single season."
  },
  {
    "question": "Which team did Manchester United beat to win their first FA Cup in 1909?",
    "options": ["Bristol City", "Liverpool", "Newcastle United", "Arsenal"],
    "answer": "Bristol City",
    "points": 10,
    "info": "Manchester United won their first FA Cup in 1909 by defeating Bristol City 1-0."
  },
  {
    "question": "What year did Manchester United move to Old Trafford?",
    "options": ["1910", "1920", "1930", "1940"],
    "answer": "1910",
    "points": 15,
    "info": "Manchester United moved to Old Trafford in 1910."
  },
  {
    "question": "Who was Manchester United\"s captain before Harry Maguire?",
    "options": ["Antonio Valencia", "Wayne Rooney", "Nemanja Vidić", "Roy Keane"],
    "answer": "Antonio Valencia",
    "points": 5,
    "info": "Antonio Valencia was the captain of Manchester United before Harry Maguire, leading the team in the 2018-2019 season."
  },
  {
    "question": "Which club did Manchester United defeat to win their first Intercontinental Cup in 1999?",
    "options": ["Palmeiras", "Santos", "River Plate", "Boca Juniors"],
    "answer": "Palmeiras",
    "points": 10,
    "info": "Manchester United won their first Intercontinental Cup in 1999 by defeating Palmeiras 1-0."
  },
  {
    "question": "Who scored Manchester United\"s first ever Premier League goal?",
    "options": ["Mark Hughes", "Eric Cantona", "Brian McClair", "Denis Irwin"],
    "answer": "Mark Hughes",
    "points": 15,
    "info": "Mark Hughes scored Manchester United\"s first ever Premier League goal in a 2-1 win over Sheffield United in 1992."
  },
  {
    "question": "What is the highest transfer fee Manchester United has paid for a player as of 2023?",
    "options": ["£80 million", "£85 million", "£90 million", "£100 million"],
    "answer": "£100 million",
    "points": 20,
    "info": "Manchester United\"s highest transfer fee paid for a player as of 2023 is £100 million for Paul Pogba in 2016."
  },
  {
    "question": "Which Manchester United player has the record for most goals in a single game?",
    "options": ["George Best", "Wayne Rooney", "Denis Law", "Robin van Persie"],
    "answer": "George Best",
    "points": 15,
    "info": "George Best holds the record for the most goals in a single game for Manchester United, scoring six against Northampton Town in 1970."
  },
  {
    "question": "Who succeeded Sir Alex Ferguson as Manchester United manager?",
    "options": ["David Moyes", "Louis van Gaal", "Ryan Giggs", "Jose Mourinho"],
    "answer": "David Moyes",
    "points": 10,
    "info": "David Moyes succeeded Sir Alex Ferguson as Manchester United manager in 2013."
  },
 
  {
    "question": "Which player was Manchester United\"s top scorer in the 1998-1999 treble-winning season?",
    "options": ["Dwight Yorke", "Andy Cole", "Teddy Sheringham", "David Beckham"],
    "answer": "Dwight Yorke",
    "points": 15,
    "info": "Dwight Yorke was Manchester United\"s top scorer in the 1998-1999 season, scoring 29 goals in all competitions."
  },
  {
    "question": "What is Manchester United\"s biggest ever victory in the Premier League?",
    "options": ["9-0", "8-0", "7-0", "6-0"],
    "answer": "9-0",
    "points": 10,
    "info": "Manchester United\"s biggest ever Premier League victory was a 9-0 win against Ipswich Town in 1995."
  },
  {
    "question": "Who is Manchester United\"s youngest ever goalscorer in the Premier League?",
    "options": ["Wayne Rooney", "Mason Greenwood", "Marcus Rashford", "Ryan Giggs"],
    "answer": "Mason Greenwood",
    "points": 15,
    "info": "Mason Greenwood became Manchester United\"s youngest ever goalscorer in the Premier League at the age of 17 years and 353 days."
  },
  {
    "question": "Which player holds the record for the most assists in a single Premier League season for Manchester United?",
    "options": ["Ryan Giggs", "Paul Scholes", "David Beckham", "Bruno Fernandes"],
    "answer": "David Beckham",
    "points": 10,
    "info": "David Beckham holds the record for the most assists in a single Premier League season for Manchester United, with 18 assists in 1999-2000."
  },
  {
    "question": "Who was Manchester United\"s first non-British manager?",
    "options": ["Louis van Gaal", "Jose Mourinho", "Erik ten Hag", "Ole Gunnar Solskjær"],
    "answer": "Louis van Gaal",
    "points": 10,
    "info": "Louis van Gaal, appointed in 2014, was Manchester United\"s first non-British manager."
  },
  {
    "question": "What was the original name of Manchester United Football Club?",
    "options": ["Newton Heath LYR", "Manchester Central", "Manchester Rangers", "Manchester FC"],
    "answer": "Newton Heath LYR",
    "points": 10,
    "info": "Manchester United was originally founded as Newton Heath LYR in 1878."
  },
  {
    "question": "Which Manchester United player has won the most Premier League titles?",
    "options": ["Ryan Giggs", "Paul Scholes", "Gary Neville", "Roy Keane"],
    "answer": "Ryan Giggs",
    "points": 10,
    "info": "Ryan Giggs has won 13 Premier League titles with Manchester United, the most by any player in the club\"s history."
  },
  {
    "question": "What year did Manchester United first compete in the Premier League?",
    "options": ["1992", "1993", "1994", "1995"],
    "answer": "1992",
    "points": 5,
    "info": "Manchester United has competed in the Premier League since its inception in 1992."
  },
  {
    "question": "Which Manchester United player scored a hat-trick on his Premier League debut?",
    "options": ["Wayne Rooney", "Ruud van Nistelrooy", "Robin van Persie", "Cristiano Ronaldo"],
    "answer": "Wayne Rooney",
    "points": 20,
    "info": "Wayne Rooney scored a hat-trick on his Premier League debut for Manchester United in a 6-2 win over Fenerbahce in 2004."
  },
  {
    "question": "Who was the first Manchester United player to score 100 Premier League goals?",
    "options": ["Ryan Giggs", "Paul Scholes", "Wayne Rooney", "Cristiano Ronaldo"],
    "answer": "Ryan Giggs",
    "points": 15,
    "info": "Ryan Giggs was the first Manchester United player to score 100 Premier League goals."
  },
  {
    "question": "Who did Manchester United beat to win their first League Cup in 1992?",
    "options": ["Nottingham Forest", "Liverpool", "Arsenal", "Chelsea"],
    "answer": "Nottingham Forest",
    "points": 10,
    "info": "Manchester United won their first League Cup in 1992 by defeating Nottingham Forest 1-0."
  },
  {
    "question": "Which Manchester United player scored the most goals in a single Champions League campaign?",
    "options": ["Ruud van Nistelrooy", "Cristiano Ronaldo", "Wayne Rooney", "Ole Gunnar Solskjær"],
    "answer": "Ruud van Nistelrooy",
    "points": 15,
    "info": "Ruud van Nistelrooy scored 12 goals in the 2002-2003 Champions League campaign, the most by a Manchester United player in a single season."
  },
  {
    "question": "Which Manchester United player was nicknamed 'Captain Marvel'?",
    "options": ["Bryan Robson", "Roy Keane", "Paul Ince", "Steve Bruce"],
    "answer": "Bryan Robson",
    "points": 10,
    "info": "Bryan Robson, nicknamed 'Captain Marvel', captained Manchester United for 12 years and led them to multiple trophies."
  },
  {
    "question": "What is the highest position Manchester United has finished in the Premier League?",
    "options": ["1st", "2nd", "3rd", "4th"],
    "answer": "1st",
    "points": 5,
    "info": "Manchester United has finished in 1st place in the Premier League 13 times as of 2023."
  },
  {
    "question": "Who was the first Manchester United player to score in a World Cup final?",
    "options": ["Bobby Charlton", "Nobby Stiles", "George Best", "Dennis Law"],
    "answer": "Bobby Charlton",
    "points": 20,
    "info": "Bobby Charlton scored in the 1966 World Cup final, becoming the first Manchester United player to do so."
  },
  {
    "question": "Which Manchester United player scored four goals in a single Premier League match against Blackburn Rovers?",
    "options": ["Ole Gunnar Solskjær", "Andy Cole", "Wayne Rooney", "Dimitar Berbatov"],
    "answer": "Dimitar Berbatov",
    "points": 15,
    "info": "Dimitar Berbatov scored four goals in Manchester United\"s 7-1 win over Blackburn Rovers in 2010."
  },
  {
    "question": "Which Manchester United manager won the most FA Cups?",
    "options": ["Sir Alex Ferguson", "Matt Busby", "Louis van Gaal", "Ron Atkinson"],
    "answer": "Sir Alex Ferguson",
    "points": 10,
    "info": "Sir Alex Ferguson won five FA Cups during his tenure at Manchester United."
  },
  {
    "question": "Who was Manchester United\"s captain during the 1999 treble-winning season?",
    "options": ["Roy Keane", "Gary Neville", "David Beckham", "Ryan Giggs"],
    "answer": "Roy Keane",
    "points": 10,
    "info": "Roy Keane captained Manchester United during their 1999 treble-winning season."
  },
  {
    "question": "What year did Manchester United win their first FIFA Club World Cup?",
    "options": ["1999", "2008", "2014", "2017"],
    "answer": "2008",
    "points": 20,
    "info": "Manchester United won their first FIFA Club World Cup in 2008, defeating LDU Quito 1-0 in the final."
  },
  {
    "question": "Which Manchester United player has won the most FIFA World Cups?",
    "options": ["Bobby Charlton", "Nobby Stiles", "Paul Pogba", "Juan Mata"],
    "answer": "Paul Pogba",
    "points": 15,
    "info": "Paul Pogba won the FIFA World Cup with France in 2018, making him the only Manchester United player with a World Cup victory during his time at the club."
  },
  {
    "question": "What year did Manchester United go public on the London Stock Exchange?",
    "options": ["1991", "1992", "1993", "1994"],
    "answer": "1991",
    "points": 20,
    "info": "Manchester United went public on the London Stock Exchange in 1991."
  },
  {
    "question": "Which Manchester United player scored the fastest hat-trick in the Premier League?",
    "options": ["Ole Gunnar Solskjær", "Cristiano Ronaldo", "Ruud van Nistelrooy", "Wayne Rooney"],
    "answer": "Ole Gunnar Solskjær",
    "points": 15,
    "info": "Ole Gunnar Solskjær scored the fastest hat-trick in Premier League history in 10 minutes against Nottingham Forest in 1999."
  },
  {
    "question": "Who was Manchester United\"s first signing for over £30 million?",
    "options": ["Rio Ferdinand", "Juan Sebastian Veron", "Wayne Rooney", "Dimitar Berbatov"],
    "answer": "Rio Ferdinand",
    "points": 10,
    "info": "Rio Ferdinand was Manchester United\"s first signing for over £30 million, joining from Leeds United in 2002."
  },
  {
    "question": "Which Manchester United player won the PFA Player of the Year award twice in the 2000s?",
    "options": ["Cristiano Ronaldo", "Ryan Giggs", "Paul Scholes", "Wayne Rooney"],
    "answer": "Cristiano Ronaldo",
    "points": 15,
    "info": "Cristiano Ronaldo won the PFA Player of the Year award twice in the 2000s, in 2007 and 2008."
  },
  {
    "question": "Who was Manchester United\"s first official sponsor?",
    "options": ["Sharp", "Vodafone", "Chevrolet", "Aon"],
    "answer": "Sharp",
    "points": 10,
    "info": "Sharp became Manchester United\"s first official sponsor in 1982."
  },
  {
    "question": "Which Manchester United player holds the record for the most goals in a Premier League match?",
    "options": ["Andy Cole", "Dimitar Berbatov", "Wayne Rooney", "Ole Gunnar Solskjær"],
    "answer": "Andy Cole",
    "points": 15,
    "info": "Andy Cole holds the record for the most goals in a Premier League match, scoring five against Ipswich Town in 1995."
  },
  {
    "question": "What year did Manchester United first win the Premier League?",
    "options": ["1993", "1994", "1995", "1996"],
    "answer": "1993",
    "points": 10,
    "info": "Manchester United won their first Premier League title in 1993."
  },
  {
    "question": "Which Manchester United player won the FIFA Puskás Award for the best goal in 2011?",
    "options": ["Wayne Rooney", "Cristiano Ronaldo", "Paul Scholes", "Ryan Giggs"],
    "answer": "Wayne Rooney",
    "points": 20,
    "info": "Wayne Rooney won the FIFA Puskás Award in 2011 for his overhead kick against Manchester City."
  },
  {
    "question": "Which Manchester United player has the record for the most consecutive Premier League appearances?",
    "options": ["David De Gea", "Wayne Rooney", "Ryan Giggs", "Phil Neville"],
    "answer": "David De Gea",
    "points": 10,
    "info": "David De Gea holds the record for the most consecutive Premier League appearances for Manchester United, with 119 from 2015 to 2018."
  },
  {
    "question": "Who was Manchester United\"s manager during their first European Cup win?",
    "options": ["Matt Busby", "Tommy Docherty", "Ron Atkinson", "Wilf McGuinness"],
    "answer": "Matt Busby",
    "points": 10,
    "info": "Matt Busby was the manager when Manchester United won their first European Cup in 1968."
  }
  ];

  // Create a list of questions only
    List<String> questionsOnly =
      generalKnowledgeQuestions.map((quiz) => quiz["question"] as String).toList();
    
  
  
  

  List<int> pointsOnly =
      generalKnowledgeQuestions.map((quiz) => quiz["points"] as int).toList();

  List<List<String>> optionsOnly =
      generalKnowledgeQuestions.map((quiz) => quiz["options"] as List<String>).toList();
  List<String> infoOnly =
      generalKnowledgeQuestions.map((quiz) => quiz["info"] as String).toList();

  List<int> correctAnswerIndexes = generalKnowledgeQuestions.map((quiz) {
    List<String> options = quiz["options"];
    String answer = quiz["answer"];
    return options.indexOf(answer);
  }).toList();
}
