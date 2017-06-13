/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import org.camp.servlet.ResultData;
/**
 *
 * @author sayanishimura
 */
public class FortuneTelling extends HttpServlet {

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
        
        // 画面に出力する内容の設定
		// 出力する内容がHTMLであることを設定
        // 出力する画面の文字コードをUTF-8に設定
        response.setContentType("text/html;charset=UTF-8");
        
       // 画面に出力するためのWriterクラスインスタンスを取得
        try(PrintWriter out = response.getWriter()){
            String result = "/WEB-INF/jsp/FortuneTellingResult.jsp";
            //大吉", "中吉", "吉", "半吉", "末小吉", "凶", "小凶", "半凶", "末凶", "凶", "大凶"
            String luckList[] = {"大吉", "中吉", "吉", "半吉", "末小吉",
                "凶", "小凶", "半凶", "末凶", "凶", "大凶"};
            Random rand = new Random();
            
            Integer num = rand.nextInt(luckList.length); 
//            out.println("あなたの運勢は、"+luckList[num]+"です！");
           
           //リクエストスコープへ結果を設定
           ResultData data=new ResultData();
           data.setD(new Date());
           data.setLuck(luckList[num]);
           
           request.setAttribute("DATA",data);
           
           RequestDispatcher rd=request.getRequestDispatcher(result);
           rd.forward(request,response);
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
