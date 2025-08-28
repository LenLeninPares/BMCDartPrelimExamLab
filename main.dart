import 'dart:io';
/// Student Grade Evaluator Program 
/// The programs purpose is to show the grade of the students and to know if he or she will
/// Pass the examination or fail it.

void main() {

    //First let's set CONST making our variable values constant
    const double passing_grade = 60.0;
    const double assignmentWeight = 0.2;
    const double midtermWeight = 0.3;
    const double finalExamWeight = 0.5;

    //Next get the student input name
    print("Enter your name: ");
    String? name = stdin.readLineSync();

    //Gettinhg their score with error handling
    double assignmentScore = getScore('Assignment');
    double midtermScore = getScore('Midterm');
    double finalExamScore = getScore('Final Exam');


    //Calculate final grade of student
    double finalgrade = (assignmentScore * assignmentWeight) + (midtermScore * midtermWeight) + (finalExamScore * finalExamWeight);

    //determening if it passes or fails
    String result = finalgrade >= passing_grade ? 'Passed' : 'Failed';


    //now for the results
    print('GRADE REPORT');
    print('Student name: $name');
    print('Assignment: $assignmentScore');
    print('Midterm: $midtermScore');
    print('Final Exam: $finalExamScore');
    print('Final Grade: $finalgrade');
    print("Result: $result");

}

// Helper function to get and validate scores
double getScore(String testName) {
        while (True) {
            try {
                print('Enter $testName score (0-100): ');
                double score = double.parse(stdin.readLineSync()!);

                if (score < 0 || score > 100) {
                    print('ang Score mo ay dapat between lang sa 0 at 100. ulit!');
                    continue;
                }
                return score;
            }   catch (e) {
                print("Invalid input. Please enter a number: ");
            }
        }
    }



