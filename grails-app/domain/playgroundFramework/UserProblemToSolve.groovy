package playgroundFramework

import grails.persistence.Entity
import userFramework.User

@Entity
public class UserProblemToSolve {

    static mapping = {
        dateCreated default: new Date()
    }

    static constraints = {
    }

    User user
    ProblemToSolve problem
    Answer userAnswer
    Date dateCreated
}
