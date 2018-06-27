package userFramework
import grails.persistence.Entity
@Entity
class User {
    String firstName
    String lastName
    static constraints = {
    }
}

