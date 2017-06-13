/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;
//
import java.io.Serializable;
//
import java.util.Date;
/**
 *
 * @author sayanishimura
 */
public class ResultData implements Serializable{
    //フィールド作成
    private Date d;
    private String luck;
    //コントラクタ
    public ResultData(){}
    //Date getter
    public Date getD(){ 
        return d; 
    }
    //Date setter
    public void setD(Date d){
        this.d = d;
    }
   //get Luck
    public String getLuck(){
    return luck;
    }
    //set Luck
    public void setLuck(String Luck){
         this.luck = Luck;
    }
}
