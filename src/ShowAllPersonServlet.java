import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ShowAllPersonServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> list=new ArrayList<User>();
        list.add(new User("1","zcl1",1));
        list.add(new User("2","zcl2",2));
        list.add(new User("3","zcl3",3));
        req.setAttribute("users",list);
        req.getAttribute("user");
        req.getRequestDispatcher("/show.jsp").forward(req,resp);
    }
}
