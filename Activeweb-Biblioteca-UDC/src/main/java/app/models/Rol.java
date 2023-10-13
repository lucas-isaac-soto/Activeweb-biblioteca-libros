/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;

public class Rol implements Serializable{
    private static ArrayList<String> roles = new ArrayList<>(Arrays.asList("ver"));

    public Rol(){}
    
    
    public static ArrayList<String> getRoles() {
        return roles;
    }

    public static void setRoles(ArrayList<String> roles) {
        Rol.roles = roles;
    }
    
    public static Boolean tieneRol(String rol){
        if(roles.contains(rol))
            return true;
        
        return false;
    }
}
