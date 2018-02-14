package ua.kiev.prog;

import java.util.List;

public interface UserService
{
    CustomUser getUserByLogin(String login);
    boolean existsByLogin(String login);
    void addUser(CustomUser customUser);
    void updateUser(CustomUser customUser);
    List<CustomUser> getUsers ();
    void deleteUsers (long[] toDelete);
}
