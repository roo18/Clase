/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.banco.presentacion;


import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author alumno
 */
@Controller
public class pruebaController {

    @RequestMapping({"/beer.json"})
    public void read(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.getWriter().println("Hola");
    }
}
