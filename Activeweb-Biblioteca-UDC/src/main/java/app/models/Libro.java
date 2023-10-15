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
    
    public static Libro buscarLibro(String isbm){
        for(Libro libro : Libro.biblioteca){
            if(libro.getIsbm().equals(isbm))
                return libro;
        }
        return null;
    }
    
    public void rellenar(String isbm, String urlImg, String titulo, Integer anioEdicion, String editorial,Autor autor){
        this.isbm = isbm;
        this.urlImg = urlImg;
        this.titulo = titulo;
        this.anioEdicion = anioEdicion;
        this.editorial = editorial;
        this.autor = autor;
    }
    public static void cargarBiblioteca(){
        if(!Libro.biblioteca.isEmpty())
            return;
        
        Libro libro = new Libro();
        Autor autor = new Autor();
        
        autor.rellenar(1, "OSAMU", "DAZAI", "https://kimi.com.tr/wp-content/uploads/2023/02/cicek-1.jpg");
        libro.rellenar("978-84-937413-7-2", "https://images.cdn3.buscalibre.com/fit-in/360x360/00/de/00de0a32dd3797e101139b35e97d2262.jpg", "INDIGNO DE SER HUMANO",  1948, "CHIKUMA SHOBO", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(2, "FIODOR", "DOSTOYEVSKI", "https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Vasily_Perov_-_%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%A4.%D0%9C.%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_-_Google_Art_Project.jpg/240px-Vasily_Perov_-_%D0%9F%D0%BE%D1%80%D1%82%D1%80%D0%B5%D1%82_%D0%A4.%D0%9C.%D0%94%D0%BE%D1%81%D1%82%D0%BE%D0%B5%D0%B2%D1%81%D0%BA%D0%BE%D0%B3%D0%BE_-_Google_Art_Project.jpg");
        libro = new Libro();libro.rellenar("978-987-1512-51-5", "https://http2.mlstatic.com/D_NQ_NP_696109-MLA46364046850_062021-O.webp", "LOS HERMANOS KARAMAZOV",  1880, "EL MENSAJERO RUSO", autor);Libro.biblioteca.add(libro);
        libro = new Libro();libro.rellenar("978-987-1512-41-6", "https://www.bubok.com.ar/libro/portadaLibro/268387/6/crimen-y-castigo.jpg", "CRIMEN Y CASTIGO",   1866, "EL MENSAJERO RUSO", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(3, "ALBERT", "CAMUS", "https://www.cultura.gob.ar/media/uploads/albert-camus.jpg");
        libro = new Libro();libro.rellenar("968-432-008-6", "https://images.cdn1.buscalibre.com/fit-in/360x360/23/2b/232bc65eb8f64269cc40038ac50c0a0f.jpg", "EL HOMBRE REBELDE",  1951, "OCTAEDRO", autor);Libro.biblioteca.add(libro);
        libro = new Libro();libro.rellenar("978-84-206-3694-8", "https://images.cdn2.buscalibre.com/fit-in/360x360/0d/30/0d30665fd8b3d4e5860cd17a4d9fddcd.jpg", "EL EXTRANJERO",   1942, "EDITIONS GALLIMARD", autor);Libro.biblioteca.add(libro);
        libro = new Libro();libro.rellenar("978-950-03-9634-9", "https://images.cdn2.buscalibre.com/fit-in/360x360/6b/b5/6bb542cf8655b23f2303124ea895ab7d.jpg", "EL MITO DE SISIFO",   1942, "EDITIONS GALLIMARD", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(4, "MIGUEL DE CERVANTES", "SAAVEDRA", "https://1.bp.blogspot.com/-hhkq2ySmj6Q/Xwov8LASh4I/AAAAAAAAfgM/9QuDGm-iOXYiIfHIoGQgsFn10st8tmSDQCLcBGAsYHQ/s1600/Miguel%2Bde%2BCervantes.png");
        libro = new Libro();libro.rellenar("956-13-1577-7", "https://images.cdn2.buscalibre.com/fit-in/360x360/73/b6/73b6fd96c31d26e2b6a3531808c1188c.jpg", "DON QUIJOTE DE LA MANCHA",  1605, "JUAN DE LA CUESTA", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(5, "MARIO", "BENEDETTI", "https://www.biografiasyvidas.com/biografia/b/fotos/benedetti_mario_3.jpg");
        libro = new Libro();libro.rellenar("968-432-701-6", "https://image.cdn0.buscalibre.com/2929196.__RS360x360__.jpg", "LA TREGUA",  1960, "OCTAEDRO", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(6, "FRANZ", "KAFKA", "https://cdn.culturagenial.com/es/imagenes/kafka-foto-cke.jpg");
        libro = new Libro();libro.rellenar("9978-956-13-1789-5", "https://images.cdn1.buscalibre.com/fit-in/360x360/49/05/49059691af5b6a427208ab297cb0e315.jpg", "LA METAMORFOSIS",  1915, "DIE WEIßEN BLäTTER", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(7, "BRET EASTON", "ELLIS", "https://www.jotdown.es/wp-content/uploads/2020/05/ellisbn-800x528.jpg");
        libro = new Libro();libro.rellenar("978-1-5290-7715-5", "https://images.cdn3.buscalibre.com/fit-in/360x360/7d/3f/7d3fa57b925022e3e47b18582f8bc859.jpg", "AMERICAN PSYCHO",  1991, "VINTAGE BOOKS", autor);Libro.biblioteca.add(libro);
        
        autor = new Autor();autor.rellenar(8, "JEAN-PAUL", "SARTRE", "https://www.cultura.gob.ar/media/uploads/jean-paul-sartre-25.jpg");
        libro = new Libro();libro.rellenar("968-432-686-6", "https://roxanaorue.files.wordpress.com/2017/06/la-nc3a1usea.jpg", "LA NAUSEA",  1938, "OCTAEDRO", autor);Libro.biblioteca.add(libro);
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
