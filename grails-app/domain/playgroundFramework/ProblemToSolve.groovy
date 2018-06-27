package playgroundFramework

import grails.persistence.Entity
@Entity
public class ProblemToSolve {

    static constraints = {
        question(nullable: false)
        answer(nullable: false)
    }

    String question
    Answer answer
}
