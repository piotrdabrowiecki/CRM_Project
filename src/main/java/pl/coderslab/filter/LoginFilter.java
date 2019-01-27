package pl.coderslab.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;




@WebFilter("/*")
public class LoginFilter implements Filter {


    public void destroy() {
    }



    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws ServletException, IOException {

        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        HttpSession session = request.getSession(false);

        String loginURI = request.getContextPath() + "/user/loginUser";

        String homeURI = request.getContextPath() + "/home/home";

        String beginURI = request.getContextPath() + "";


        boolean sessionExists = session != null;


        boolean loginRequest = request.getRequestURI().equals(loginURI);

        boolean homeRequest = request.getRequestURI().equals(homeURI);
        boolean beginRequest = request.getRequestURI().equals(beginURI);

        boolean isStaticResource = request.getRequestURI().startsWith("/resources/");
        boolean isCSS = request.getRequestURI().startsWith("/webapp/");




        String path = request.getRequestURI();
        String path2 = request.getContextPath();



        if(path.endsWith(".css") || path.endsWith(".jpg") || path.contains("css") ){
            chain.doFilter(request,response);
            return;
        }



        if(path.contains("home")   || path.contains("loginUser")  || path.contains("register") ){


            chain.doFilter(request, response);

        }
        else if(session.getAttribute("login") != null && session.getAttribute("login").toString().equals("admin")){


            chain.doFilter(request, response);


        }
        else if(session.getAttribute("login") != null && !session.getAttribute("login").toString().equals("admin") && path.contains("loginUser") ||
                session.getAttribute("login") != null && !session.getAttribute("login").toString().equals("admin") && path.contains("userProjects") ||
                session.getAttribute("login") != null && !session.getAttribute("login").toString().equals("admin") && path.contains("loggedUser") ||
                session.getAttribute("login") != null && !session.getAttribute("login").toString().equals("admin") && path.contains("editUser") ||
                session.getAttribute("login") != null && !session.getAttribute("login").toString().equals("admin") && path.contains("deleteUser")


        ){

            chain.doFilter(request, response);

        }
        else{


            response.sendRedirect(homeURI);


        }


    }



    public void init(FilterConfig config) throws ServletException {




    }




}
