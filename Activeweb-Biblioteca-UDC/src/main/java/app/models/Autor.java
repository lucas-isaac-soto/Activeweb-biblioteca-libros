package app.models;

import java.io.Serializable;

public class Autor implements Serializable{
    private Integer id;
    private String urlImg;
    private String nombre;
    private String apellido;
    
    public Autor(){
    }
    
    public void rellenar(Integer id,String nombre,String apellido, String urlImg){
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.urlImg = urlImg;
    }

    public String getUrlImg() {
        return urlImg;
    }

    public void setUrlImg(String urlImg) {
        this.urlImg = urlImg;
    }
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
}
