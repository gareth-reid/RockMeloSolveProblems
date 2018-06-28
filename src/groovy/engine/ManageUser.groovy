package engine

import playgroundFramework.Answer
import playgroundFramework.ProblemToSolve
import playgroundFramework.UserProblemToSolve
import userFramework.User

public interface IManageUser {
    User CreateUser(User user)
}
public class ManageUser implements IManageUser{
    public User CreateUser(User user)
    {
        user.save(flush:true, failOnError:true)
        return user
    }

    public User GetUser(int id)
    {
        def query = User.where {
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

}
