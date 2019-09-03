import entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LoginServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession httpSession=req.getSession();
        httpSession.setAttribute("user","zcl");
        req.setAttribute("user1","zcl1");
        User user2=new User("user2","666",2);
        req.setAttribute("user2",user2);

        List<User> list=new ArrayList<>();
        list.add(new User("p1","dog",1));
        list.add(new User("p2","dog2",2));
        list.add(new User("p3","dog3",3));

        req.setAttribute("list",list);

        Map<String,User> map=new HashMap<>();
        map.put("m1",new User("m1","pig",1));
        map.put("m2",new User("m1","pig2",2));
        req.setAttribute("map",map);

        //resp.sendRedirect("/EL.jsp");
        req.getRequestDispatcher("/EL.jsp").forward(req,resp);
    }
}
