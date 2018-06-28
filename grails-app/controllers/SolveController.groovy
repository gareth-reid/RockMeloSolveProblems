import playgroundFramework.ProblemToSolve

public class SolveController {

    def index() {
        def randomNumber = Math.abs(new Random().nextInt() % 5)

        def randomList = new ArrayList<ProblemToSolve>(5)
        randomList.add(new ProblemToSolve(question: "School starts at 9 o’clock in the morning and ends after 6 hours. What time does\n" +
                "school end?"))
        randomList.add(new ProblemToSolve(question: "The second recess in school is at 1 o’clock in the afternoon, which is 2 hours\n" +
                "after the first recess. When is the first recess?"))
        randomList.add(new ProblemToSolve(question: "The principal started a meeting on Monday at 10 o’clock in the morning. The\n" +
                "meeting ended at 1 o’clock in the afternoon. How long was the meeting?"))
        randomList.add(new ProblemToSolve(question: "All students left the school at 3 o’clock. The vice-principal stayed for 3 more\n" +
                "hours. When did the vice-principal leave the school?"))
        randomList.add(new ProblemToSolve(question: "Grade 2 classes were going for a museum visit on Tuesday. They left the school\n" +
                "at 10 o’clock in the morning and took an hour to ride the bus there. Then, they\n" +
                "stayed in the museum for 2 hours and rode on the bus for another hour to come\n" +
                "back to school. At what time did they arrive back at school?"))
            [problem: randomList.get(randomNumber) ]
    }

    def submitAnswer(){
        def answer = params.get("answer")
        int id = 1
        redirect (action: "index")

    }
}
