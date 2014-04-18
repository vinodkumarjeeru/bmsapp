package org.bankapp.web.utils;

//~--- JDK imports ------------------------------------------------------------

import java.io.IOException;

import java.net.URLDecoder;
import java.net.URLEncoder;

import java.util.logging.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Hold the Utility method related to cookies.
 *
 * @author Sudarsan
 */
public class ServletUtils {
    private static Logger LOG = Logger.getLogger(ServletUtils.class.getName());

    /**
     * Adds a cookie for the given Request
     *
     * @param name The name of the cookie
     * @param value The value of the cookie
     * @param request The HTTP request we are processing
     * @param response The HTTP response we are creating
     */
    public static void addCookie(String name, String value, HttpServletRequest request, HttpServletResponse response) {
        try {

            // expire the previous cookie which was set, this is done
            // as user also might have done one level logoff
            ServletUtils.expireCookie(name, request, response);

            // set the cookie after the user is validated
            Cookie userCookie = new Cookie(name, URLEncoder.encode(value, "UTF-8"));

            userCookie.setMaxAge(-1);
            userCookie.setPath("/");
            response.setContentType("application/x-www-form-urlencoded");
            response.addCookie(userCookie);
            LOG.info("cookie added " + name + " = " + value);
        } catch (Exception e) {
            LOG.info("error while adding cookie");
        }
    }

    /**
     * Expires the cookie for the given Request
     *
     * @param name The name of the cookie
     * @param value The value of the cookie
     * @param request The HTTP request we are processing
     * @param response The HTTP response we are creating
     */
    public static void expireCookie(String name, HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                String cookieName  = cookies[i].getName();
                String cookieValue = cookies[i].getValue();

                if (cookieName.equals(name)) {
                    LOG.fine("Expiring Cookie, name= " + cookieName + " value: " + cookieValue + " age: "
                             + cookies[i].getMaxAge());
                    cookies[i].setMaxAge(0);
                    cookies[i].setValue(null);
                    cookies[i].setPath("/");
                    response.setContentType("application/x-www-form-urlencoded");
                    response.addCookie(cookies[i]);
                }
            }
        }
    }

    /**
     * Gets the cookie value for the given Cookie name
     *
     * @param name The name of the cookie
     * @param request The HTTP request we are processing
     * @return the cookie value, null if cookie doesnt exist.
     */
    public static String getCookieValue(String name, HttpServletRequest request) {
        String value = null;

        try {
            Cookie[] cookies = request.getCookies();

            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    String cookieName = cookies[i].getName();

                    if (cookieName.equals(name)) {
                        String cookieValue = cookies[i].getValue();

                        value = URLDecoder.decode(cookieValue, "UTF-8");

                        break;
                    }
                }
            }
        } catch (Exception e) {
            LOG.fine("error while trying to get cookie value " + name);
        }

        return value;
    }

    /**
     * Gets the cookie value for the given Cookie name
     *
     * @param name The name of the cookie
     * @param request The HTTP request we are processing
     * @return the cookie value, null if cookie doesn't exist.
     */
    public static String getCookieValue(String name, String defaultValue, HttpServletRequest request) {
        String value = getCookieValue(name, request);

        if (value == null) {
            value = defaultValue;
        }

        return value;
    }

    /** To execute a service and to forward request to a resource*/
    public static void doForward(HttpServletRequest request, HttpServletResponse respnse, String url)
            throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/" + url);

        dispatcher.forward(request, respnse);
    }
    /** Utility method to bind client/server side errors in HttpRequest Object*/
    public static void setError(HttpServletRequest request, String type, Object object) {
        request.setAttribute(type, object);
    }
    
}



