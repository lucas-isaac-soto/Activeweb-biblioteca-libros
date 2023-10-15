package app.controllers;

import app.models.Libro;
import org.javalite.activeweb.AppController;

public class LibrosController extends AppController{
    
    public void index(){
        Libro.cargarBiblioteca();
        
        String usuario = getHttpServletRequest().getRemoteUser();
        
        Boolean rol = getHttpServletRequest().isUserInRole("vermas");
        if(rol)
            session("rol","vermas");
        else
            session("rol","ver");
        
        session("usuario",usuario);
        view("biblioteca",Libro.getBiblioteca());
    }
    
    public void detalles(){
        Libro libro = Libro.buscarLibro(param("isbm"));
        view("libro",libro);
    }
    
}
