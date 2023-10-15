package app.controllers;

import app.models.Libro;
import org.javalite.activeweb.AppController;

public class HomeController extends AppController{
    
    public void index(){
        Libro.cargarBiblioteca();
    }
    
    public void cerrarSession(){
        session().invalidate();
        redirect(HomeController.class, "index");
    }
}
