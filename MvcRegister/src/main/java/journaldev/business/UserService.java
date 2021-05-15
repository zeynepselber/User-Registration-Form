package journaldev.business;

import journaldev.entities.User;
import java.util.List;

public interface UserService {

    void createUser(User user);
    List<User> listAll();

}
