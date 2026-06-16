import 'dart:async';

Future<String> fetchCricketScore() async {
  try {
    // Simulate network delay of 1.5 seconds
    await Future.delayed(Duration(milliseconds: 1500));

    // Simulated score data
    String score = "India: 185/4 (20 Overs)";

    return score;

    // Uncomment the line below to test exception handling
    // throw Exception("Failed to fetch match score");
  } catch (e) {
    throw Exception("Error: $e");
  }
}

void main() async {
  print("Fetching cricket match score...");

  try {
    String score = await fetchCricketScore();
    print("Match Score: $score");
  } catch (e) {
    print("Exception caught: $e");
  }

  print("Program completed.");
}