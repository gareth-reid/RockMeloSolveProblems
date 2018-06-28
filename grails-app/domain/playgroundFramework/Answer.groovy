package playgroundFramework

import grails.persistence.Entity
import userFramework.User

@Entity
public class Answer {
    static constraints = {
    }

    UserProblemToSolve problem
    String textResponse

}
