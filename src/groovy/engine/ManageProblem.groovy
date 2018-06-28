package engine

import playgroundFramework.Answer
import playgroundFramework.ProblemToSolve
import playgroundFramework.UserProblemToSolve

public interface IManageProblem {
    UserProblemToSolve CreateUserProblem(UserProblemToSolve userProblem)
    Answer CreateAnswer(Answer answer)
    ProblemToSolve GetProblem(int id)
    List<ProblemToSolve> ListProblems(int level)
}
public class ManageProblem implements IManageProblem{
    public UserProblemToSolve CreateUserProblem(UserProblemToSolve userProblem)
    {
        userProblem.save(flush:true, failOnError:true)
        return userProblem
    }

    public Answer CreateAnswer(Answer answer)
    {
        answer.save(flush:true, failOnError:true)
        return answer
    }

    public ProblemToSolve GetProblem(int id)
    {
        def query = ProblemToSolve.where {
            id == id
        }
        try{
            def found = query.find()
            if (found != null) {
                return query.find()
            }
        } catch (RuntimeException e){
            return null
        }
    }

    public List<ProblemToSolve> ListProblems(int level)
    {
        return ProblemToSolve.findAll() { level == level}//.sort { it.description }
    }

}