import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class JstlServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user1=new User("jstl1","sss1",1);
        User user2=new User("jstl2","sss2",2);
        User user3=new User("jstl3","sss3",3);
        User user4=new User("jstl4","sss4",4);
        List<User> list=new ArrayList<>();
        list.add(user1);
        list.add(user2);
        list.add(user3);
        list.add(user4);
        req.setAttribute("list",list);
        req.getRequestDispatcher("/user.jsp").forward(req,resp);
    }
}
