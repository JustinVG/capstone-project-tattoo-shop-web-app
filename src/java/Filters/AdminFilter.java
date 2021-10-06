
package Filters;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Models.Users;
import java.io.IOException;
import service.UserService;


public class AdminFilter implements Filter {



    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        // convert request/response to proper types
        HttpServletRequest httpRequest = (HttpServletRequest)request;
        HttpServletResponse httpResponse = (HttpServletResponse)response;
        
        // get logged in user's username
        HttpSession session = httpRequest.getSession();
        String username = (String)session.getAttribute("user_name");
        
        try {
            UserService us = new UserService();
            Users user = us.getUser(username);
            if( user.getIsAdmin() != true  ) {
                httpResponse.sendRedirect("inventory");
                return;
            }
        }
        catch (Exception ex) {
            Logger.getLogger(AdminFilter.class.getName()).log(Level.SEVERE, "Problem accessing user: {0}", username);
            httpResponse.sendRedirect("inventory");
            return;
        }
        
        chain.doFilter(request, response);
        
    }
    
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}
    
    @Override
    public void destroy() {}
    
}