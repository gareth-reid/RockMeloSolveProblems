package playgroundFramework

import grails.persistence.Entity
@Entity
public class ProblemToSolve {

    static constraints = {
        question(nullable: false)
        correctAnswer(nullable: false)
    }

    static mapping = {
        question sqlType: 'longText'
    }

    int level
    String question
    Answer correctAnswer
    Date dateCreated
}
