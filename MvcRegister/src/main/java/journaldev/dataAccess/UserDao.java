package journaldev.dataAccess;

import journaldev.entities.User;

import java.util.List;

public interface UserDao {

    List<User> listAll() ;

    void createUser(User user) ;
}
