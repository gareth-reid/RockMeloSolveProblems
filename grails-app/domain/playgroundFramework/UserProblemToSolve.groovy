package playgroundFramework

import grails.persistence.Entity
import userFramework.User

@Entity
public class UserProblemToSolve {

    public UserProblemToSolve(){
    }

    static constraints = {
    }

    User user
    ProblemToSolve problem
    Answer answer


    //static hasMany = [problemsToSolve: ProblemToSolve]



}
