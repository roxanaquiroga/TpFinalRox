package com.codoacodo.model;

import java.sql.Timestamp;

public class Orador extends Persona {
    
    //Definimos variables
    private String tema;
    private Timestamp fechaAlta;
    
    //Constructor Vacío
    public Orador(){}
        
    //orador con id y timestamp para visualizar registros(select)
    public Orador(Long i, String n, String a, String m, String t, Timestamp ts ) {
        super(i, n, a, m);
        this.tema = t;
        this.fechaAlta = ts;
    }
    
    //orador sin id ni timestamp creado para insertar un orador en la db
    public Orador(String n, String a , String m, String t) {
        super(n,a,m);
        this.tema = t;
    }
    
    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public Timestamp getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Timestamp fechaAlta) {
        this.fechaAlta = fechaAlta;
    }
    
    @Override
    public String toString() {
        return super.toString() + "Orador{" + "tema=" + tema + " - Fecha de Alta=" + fechaAlta +'}';
    }

}
