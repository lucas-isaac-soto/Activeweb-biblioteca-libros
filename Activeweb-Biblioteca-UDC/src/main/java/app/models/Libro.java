package app.models;

import java.io.Serializable;
import java.util.LinkedList;

public class Libro implements Serializable{
    private String isbm;
    private String urlImg;
    private String titulo;
    private Integer anioEdicion;
    private String editorial;
    private Autor autor;
    private static LinkedList<Libro> biblioteca = new LinkedList<>(); 
    
    public Libro(){
    }
    
    public void rellenar(String isbm, String urlImg, String titulo, Integer anioEdicion, String editorial,Autor autor){
        this.isbm = isbm;
        this.urlImg = urlImg;
        this.titulo = titulo;
        this.anioEdicion = anioEdicion;
        this.editorial = editorial;
        this.autor = autor;
    }
    
    //QUEDA PENDIENDE CARGAR CADA LIBRO CON EL AUTOR
    public static void cargarBiblioteca(){
        if(!biblioteca.isEmpty())
            return;
        
        //aca procedo a cargar libro por libro al model para hacer uso de estos mas adelante
        //creo nuevo libro
        //creo nuevo autor
        //relleno autor
        //relleno libro
        
        //repetir
    }
    
    public static LinkedList<Libro> getBiblioteca() {
        return biblioteca;
    }

    public static void setBiblioteca(LinkedList<Libro> biblioteca) {
        Libro.biblioteca = biblioteca;
    }
    
    
    public String getIsbm() {
        return isbm;
    }

    public void setIsbm(String isbm) {
        this.isbm = isbm;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getAnioEdicion() {
        return anioEdicion;
    }

    public void setAnioEdicion(Integer anioEdicion) {
        this.anioEdicion = anioEdicion;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public Autor getAutor() {
        return autor;
    }

    public void setAutor(Autor autor) {
        this.autor = autor;
    }
}
