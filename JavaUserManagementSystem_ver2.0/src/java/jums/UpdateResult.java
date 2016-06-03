package jums;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hayashi-s
 */
public class UpdateResult extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        HttpSession session = request.getSession();
        
        try {
            request.setCharacterEncoding("UTF-8");
            
            //アクセスルートチェック
            String accesschk = request.getParameter("ac");
            if(accesschk ==null || (Integer)session.getAttribute("ac")!=Integer.parseInt(accesschk)){
                throw new Exception("不正なアクセスです");
            }
            
                //入力された情報をUserDataBeansに入れる
                UserDataBeans udb = new UserDataBeans();
                udb.setName(request.getParameter("name"));
                udb.setYear(request.getParameter("year"));
                udb.setMonth(request.getParameter("month"));
                udb.setDay(request.getParameter("day"));
                udb.setType(request.getParameter("type"));
                udb.setTell(request.getParameter("tell"));
                udb.setComment(request.getParameter("comment"));
                
                //未入力がないかチェックする
                ArrayList<String> chkList = udb.chkproperties();
                if(chkList.size() == 0){
                UserDataDTO Update = (UserDataDTO)session.getAttribute("resultData");
                
                //入力された情報をDTOに入れてUPDATEする
                udb.UD2DTOMapping(Update);
                UserDataDTO updateData = UserDataDAO .getInstance().update(Update);
                
                //更新したものをUserDataBeansに入れる
                updateData.UD2BeansMapping(udb);
                request.setAttribute("udb", udb);
                session.invalidate();
                }
                else{
                    request.setAttribute("mi", "minyuuryoku");
                    request.getRequestDispatcher("/update.jsp").forward(request, response);
                }
                
                request.getRequestDispatcher("/updateresult.jsp").forward(request, response);
        } catch(Exception e){
            request.setAttribute("error", e.getMessage());
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
