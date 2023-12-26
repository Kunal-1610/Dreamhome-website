package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class aboutus_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"website icon\" type=\"png\" href=\"img/logo.png\">\n");
      out.write("        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM\" crossorigin=\"anonymous\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;1,200&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("        *{\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            padding: 0;\n");
      out.write("            margin: 0;\n");
      out.write("            font-family: \"poppins\", serif;\n");
      out.write("        }\n");
      out.write("        html {\n");
      out.write("            scroll-behavior: smooth;\n");
      out.write("        }\n");
      out.write("        body {\n");
      out.write("            /*background: #333333;*/\n");
      out.write("            font-size: 18px;\n");
      out.write("        }\n");
      out.write("        .parent{\n");
      out.write("            width: 100vw;\n");
      out.write("            height: 100vh;\n");
      out.write("        }\n");
      out.write("        .child{\n");
      out.write("            display: flex;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("        .img{\n");
      out.write("            width: 100%;\n");
      out.write("            height: 100%;\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"parent\">\n");
      out.write("            <div class=\"child\">\n");
      out.write("                <div class=\"img\"><img src=\"img/christian-koch-D_4R9CcYZOk-unsplash.jpg\"></div>\n");
      out.write("                <div class=\"img\"><img src=\"img/spacejoy-YI2YkyaREHk-unsplash.jpg\"></div>\n");
      out.write("    <h3>About Us:</h3> <P>Welcome to DreamHome – Where Your Homeownership Dreams Soar!</p>\n");
      out.write("\n");
      out.write("        <p>At DreamHome, we are not just in the business of real estate; we are in the business of transforming dreams into addresses, aspirations into realities, and houses into cherished homes. Established with a passion for connecting individuals with their ideal living spaces, DreamHome has grown to become a trusted name in the real estate industry.\n");
      out.write("        </p>\n");
      out.write("        <h3>Our Vision:</h3>\n");
      out.write("        <p>To be the ultimate facilitator of homeownership dreams, empowering individuals and families to find the perfect place to create lasting memories, foster growth, and build their futures.\n");
      out.write("        </p>\n");
      out.write("        \n");
      out.write("        <h3>Our Mission:</h3>\n");
      out.write("        <p> We are dedicated to providing an unparalleled homebuying experience by combining cutting-edge technology, expert knowledge, and a human-centered approach to guide our clients through every step of their real estate journey.\n");
      out.write("        </p>\n");
      out.write("        <h3>Why Choose DreamHome:</h3>\n");
      out.write("\n");
      out.write("        <p> Experience That Matters: With years of industry expertise, our team brings a wealth of knowledge and insight to the table. We've seen trends come and go, and we use this experience to help you navigate the ever-changing real estate landscape.\n");
      out.write("        </p>\n");
      out.write("        <h3>Personalized Attention: </h3>We understand that every homebuyer's journey is unique. That's why we take the time to understand your specific needs, preferences, and goals, ensuring that your home search aligns perfectly with your vision.\n");
      out.write("\n");
      out.write("        <h3> Technology-Driven Innovation:</h3> Leveraging the latest advancements in real estate technology, we offer tools like immersive virtual tours, AI-driven recommendations, and intuitive calculators, giving you the power to make informed decisions at your fingertips.\n");
      out.write("\n");
      out.write("        <h3> Comprehensive Resources:</h3> From neighborhood insights and property details to financial guidance and market trends, we provide a comprehensive range of resources to equip you with the information you need to make confident choices.\n");
      out.write("\n");
      out.write("        <h3>Customer-Centric Approach:</h3> At DreamHome, you're not just a client; you're a partner on the journey to your dream home. Our dedicated support team is committed to providing exceptional service, addressing your questions, and ensuring your experience is seamless and satisfying.\n");
      out.write("\n");
      out.write("        Community and Engagement: Beyond transactions, we believe in building a community of homebuyers who can share their experiences, tips, and stories. Join our forums, attend workshops, and connect with like-minded individuals who share your excitement for homeownership.\n");
      out.write("\n");
      out.write("        <h3> Our Commitment:</h3>\n");
      out.write("            <p> At DreamHome, our commitment goes beyond selling homes. We're committed to building lasting relationships with our clients, guiding them toward their dreams, and helping them create a haven where life's most precious moments unfold.\n");
      out.write("\n");
      out.write("        Embark on a journey where your dreams are the destination, and let DreamHome be your guide. Discover homes that reflect your aspirations, connect with a team that understands your vision, and take the first step toward a future that's built on the foundation of your dream home.\n");
      out.write("\n");
      out.write("        Welcome to DreamHome – Where Your Dream Home Awaits!\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
