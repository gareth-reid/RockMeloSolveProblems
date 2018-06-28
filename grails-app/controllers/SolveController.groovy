import playgroundFramework.Answer
import playgroundFramework.ProblemToSolve
import playgroundFramework.UserProblemToSolve
import userFramework.User

public class SolveController {
    def manageProblem
    def manageUser
    def index() {
        def levelParam = params.get("level")
        int level = (levelParam != null && levelParam != "") ? Integer.parseInt(levelParam.toString()) : 0
        List<ProblemToSolve> questions = manageProblem.ListProblems(level)

        if (questions.size() > 0) {
            def randomNumber = Math.abs(new Random().nextInt() % questions.size())
            [problem: questions.get(randomNumber), level: level]
        } else {
            [problem: new ProblemToSolve(question: "No questions available for this level.", id: 0)]
        }
    }

    def submitAnswer(){
        def answerString = params.get("answer")
        def level = params.get("level")
        def problemId = params.get("problemId")
        if (problemId == null || problemId == "0"){
            redirect (action: "index")
        }

        //build answer*************
        def user = manageUser.GetUser(1)
        def problem = manageProblem.GetProblem(Integer.parseInt(problemId.toString()))
        def answer = manageProblem.CreateAnswer(new Answer(textResponse: answerString))
        //*************************
        manageProblem.CreateUserProblem(new UserProblemToSolve(userAnswer: answer, user: user, problem: problem))
        redirect (action: "index", params: [level: level])
    }
}
