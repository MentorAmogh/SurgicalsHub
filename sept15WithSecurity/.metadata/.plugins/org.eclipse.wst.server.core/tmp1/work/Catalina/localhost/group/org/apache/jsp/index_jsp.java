/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.33
 * Generated at: 2016-09-15 06:51:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/WEB-INF/views/CommonHeader.jsp", Long.valueOf(1473805816697L));
    _jspx_dependants.put("jar:file:/C:/Users/NIIT-NGP/workspace1/.metadata/.plugins/org.eclipse.wst.server.core/tmp1/wtpwebapps/Securitygroup/WEB-INF/lib/spring-webmvc-4.3.2.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1469718008000L));
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-4.3.2.RELEASE.jar", Long.valueOf(1473053464114L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!-- Latest compiled and minified CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- Optional theme -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- Latest compiled and minified JavaScript -->\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("<!-- Latest compiled and minified CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\" integrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- Optional theme -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\" integrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\" crossorigin=\"anonymous\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.2.0/css/bootstrap-slider.css\">\r\n");
      out.write("<!-- Latest compiled and minified JavaScript -->\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\" integrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("\t<style>\r\n");
      out.write("h1 {\r\n");
      out.write("\tcolor: #fff;\r\n");
      out.write("\tfont-face: Rio Grande Striped;\r\n");
      out.write("\tbackground-color: bisque;\r\n");
      out.write("\ttext-shadow: #fff 0 -1px 24px, #ff0 0 -2px 30px, #ff8000 0 -10px 20px, red 0 -18px 40px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- img src=\"resources/images/header.jpg\" should try in corusal-->\r\n");
      out.write("\t<span background-color=\"bisque\"><h1><font face=\"Rio Grande Striped\" size=\"56\"><center>Surgicals Hub</center></font></h1></span>\r\n");
      out.write("\t\t&nbsp; Follow us on:\r\n");
      out.write("\t\t\t <a href=\"http://twitter.com/Kyokushinowa\" class=\"btn btn-social-icon btn-twitter\">\r\n");
      out.write("    \t\t<span class=\"fa fa-twitter\"><img class=\"img-circle\" src=\"resources/images/twitter.jpg\" height=\"50\" width=\"50\"></span>\r\n");
      out.write("\t\t  </a>\r\n");
      out.write("\t\t<a href=\"https://www.instagram.com\" class=\"btn btn-social-icon btn-instagram\">\r\n");
      out.write("    \t\t<span class=\"fa fa-instagram\"><img class=\"img-circle\" src=\"resources/images/insta.jpg\" height=\"50\" width=\"50\"></span>\r\n");
      out.write("\t\t  </a>\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\t<a href=\"http://facebook.com/alterowo\" class=\"btn btn-social-icon btn-facebook\">\r\n");
      out.write("    \t\t<span class=\"fa fa-facebook\"><img class=\"img-circle\" src=\"resources/images/facebook.jpg\" height=\"50\" width=\"50\"></span>\r\n");
      out.write("\t\t  </a>\r\n");
      out.write("\t\t  \r\n");
      out.write("\t\t<a href=\"https://www.youtube.com\" class=\"btn btn-social-icon btn-youtube\">\r\n");
      out.write("    \t\t<span class=\"fa fa-youtube\"><img class=\"img-circle\" src=\"resources/images/youtube.jpg\" height=\"50\" width=\"50\"></span>\r\n");
      out.write("\t\t  </a>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t\t<nav class=\"navbar navbar-inverse\" >\r\n");
      out.write("\t\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t\t<a class=\"navbar-brand\" href=\"#\"><img src=\"resources/images/mylogo.gif\" height=\"20\" width=\"20\"></a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t\t<li class=\"active\"><a href=\"index.jsp\">Home <span class=\"glyphicon glyphicon-home\"></span></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"login\">Login <span class=\"glyphicon glyphicon-log-in\"></span></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"register\">Register <span class=\"glyphicon glyphicon-registration-mark\"></span></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"dispproducts\">View Products </a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"contact\">Contact Us <span class=\"glyphicon glyphicon-envelope\"></span></a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"about\">About Us </a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"admin\">Admin Console<span class=\"glyphicon glyphicon-log-out\"></span></a></li>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t<form class=\"navbar-form\" role=\"search\">\r\n");
      out.write("\t\t\t\t\t<div class=\"input-group\">\r\n");
      out.write("\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" placeholder=\"Search...\">\r\n");
      out.write("\t\t\t\t\t\t<span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-default\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"glyphicon glyphicon-search\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"sr-only\">Search...</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"resources/images/bell.ico\"/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /> \r\n");
      out.write("<meta name=\"keywords\" content=\"Classy Login form Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\r\n");
      out.write("<!-- Custom Theme files -->\r\n");
      out.write("<link href=\"resources/css/clastyle.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\r\n");
      out.write("<!-- for-mobile-apps -->\r\n");
      out.write("<!-- //for-mobile-apps -->\r\n");
      out.write("<!--Google Fonts-->\r\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("<title>Surgicals Hub</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".center {\r\n");
      out.write("    margin: auto;\r\n");
      out.write("    width: 80%;\r\n");
      out.write("    padding: 20px;\r\n");
      out.write("}\r\n");
      out.write(".centert {\r\n");
      out.write("    margin: auto;\r\n");
      out.write("    width: 50%;\r\n");
      out.write("    border: 2px solid #73AD21;\r\n");
      out.write("    padding: 20px;\r\n");
      out.write("}\r\n");
      out.write(".box\r\n");
      out.write("{\r\n");
      out.write("width:400px;\r\n");
      out.write("height=400px;\r\n");
      out.write("position:relative;\r\n");
      out.write("top:20px;\r\n");
      out.write("left:200px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("  <style>\r\n");
      out.write("  .carousel-inner > .item > img,\r\n");
      out.write("  .carousel-inner > .item > a > img {\r\n");
      out.write("      width: 70%;\r\n");
      out.write("      margin: auto;\r\n");
      out.write("  }\r\n");
      out.write(".carousel {\r\n");
      out.write("\tbackground: #2f4357;\r\n");
      out.write("\tmargin-top: 20px;\r\n");
      out.write("}\r\n");
      out.write(".carousel .item img {\r\n");
      out.write("\tmargin: 0 auto; /* Align slide image horizontally center */\r\n");
      out.write("\theight: 50%;\r\n");
      out.write("\twidth:50%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".bs-example {\r\n");
      out.write("\tmargin: 20px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\t<style>\r\n");
      out.write("h1 {\r\n");
      out.write("\tcolor: #fff;\r\n");
      out.write("\tfont-face: Rio Grande Striped;\r\n");
      out.write("background-color: #333;\r\n");
      out.write("text-shadow: #fff 0 -1px 24px, #ff0 0 -2px 30px, #ff8000 0 -10px 20px, red 0 -18px 40px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("  <!-- Indicators -->\r\n");
      out.write("  <ol class=\"carousel-indicators\">\r\n");
      out.write("    <li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("    <li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("    <li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("    <li data-target=\"#myCarousel\" data-slide-to=\"3\"></li>\r\n");
      out.write("  </ol>\r\n");
      out.write("\r\n");
      out.write("  <!-- Wrapper for slides -->\r\n");
      out.write("  <div class=\"carousel-inner\" role=\"listbox\">\r\n");
      out.write("    <div class=\"item active\">\r\n");
      out.write("      <img src=\"resources/images/image1.jpg\" alt=\"Chania\">\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"item\">\r\n");
      out.write("      <img src=\"resources/images/image2.jpg\" alt=\"Chania\">\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"item\">\r\n");
      out.write("      <img src=\"resources/images/image3.jpg\" alt=\"Flower\">\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"item\">\r\n");
      out.write("      <img src=\"resources/images/image4.jpg\" alt=\"Flower\">\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("\r\n");
      out.write("  <!-- Left and right controls -->\r\n");
      out.write("  <a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"prev\">\r\n");
      out.write("    <span class=\"glyphicon glyphicon-chevron-left\" aria-hidden=\"true\"></span>\r\n");
      out.write("    <span class=\"sr-only\">Previous</span>\r\n");
      out.write("  </a>\r\n");
      out.write("  <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\" data-slide=\"next\">\r\n");
      out.write("    <span class=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\r\n");
      out.write("    <span class=\"sr-only\">Next</span>\r\n");
      out.write("  </a>\r\n");
      out.write("</div>\r\n");
      out.write("\t<center>\t\r\n");
      out.write("  <img src=\"resources/images/ethicon.jpg\" height=\"120\" width=\"120\"  class=\"img-circle\" alt=\"A generic square placeholder image with rounded corners in a figure.\">\r\n");
      out.write("  <img src=\"resources/images/image_7.jpg\" height=\"120\" width=\"120\"  class=\"img-circle\"/>\r\n");
      out.write("  <img src=\"resources/images/BRAUN.jpg\" height=\"120\" width=\"120\"  class=\"img-circle\"/>\t\t\r\n");
      out.write("  <img src=\"resources/images/jandj.jpg\" height=\"120\" width=\"120\"  class=\"img-circle\"/>\t\t\r\n");
      out.write("  <img src=\"resources/images/JMS.jpg\" height=\"120\" width=\"120\"  class=\"img-circle\"/>\t\t\r\n");
      out.write("  <img src=\"resources/images/meril.jpg\" height=\"120\" width=\"120\" class=\"img-circle\"/>\t\t\r\n");
      out.write("</center>\r\n");
      out.write("</body>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
