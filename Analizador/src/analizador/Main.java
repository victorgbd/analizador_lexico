/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package analizador;

import java.io.File;

/**
 *
 * @author victor
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        String ruta = "C:/Users/victor/Desktop/analizador/analizador_lexico/Analizador/src/analizador/Lexer.flex";
        generarlexer(ruta);
    }
    public static void generarlexer(String ruta){
        File Archivo = new File(ruta);
        JFlex.Main.generate(Archivo);
        
    }
}
