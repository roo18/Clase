/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.banco.negocio;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author alumno
 */
public class EntidadBancaria {
    
    private int idEntidadBancaria;
    private String codigoEntidad;
    private String nombre;
    private String cif;
    private TipoEntidadBancaria tipoEntidadBancaria;
    private List<SucursalBancaria> sucursalesBancarias = new ArrayList<>();

    public EntidadBancaria() {
        nombre="Banco de";
        tipoEntidadBancaria=TipoEntidadBancaria.COOPERATIVASDECREDITO;
    }

    public EntidadBancaria(int idEntidadBancaria, String codigoEntidad, String nombre, String cif, TipoEntidadBancaria entidad) {
        this.idEntidadBancaria = idEntidadBancaria;
        this.codigoEntidad = codigoEntidad;
        this.cif = cif;
        this.nombre = nombre;
        this.tipoEntidadBancaria = entidad;
        
    }

    public int getIdEntidadBancaria() {
        return idEntidadBancaria;
    }

    public void setIdEntidadBancaria(int idEntidad) {
        this.idEntidadBancaria = idEntidad;
    }

    public String getCodigoEntidad() {
        return codigoEntidad;
    }

    public void setCodigoEntidad(String codigoEntidad) {
        this.codigoEntidad = codigoEntidad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCif() {
        return cif;
    }

    public void setCif(String cif) {
        this.cif = cif;
    }

    public TipoEntidadBancaria getTipoEntidadBancaria() {
        return tipoEntidadBancaria;
    }

    public void setTipoEntidadBancaria(TipoEntidadBancaria entidad) {
        this.tipoEntidadBancaria = entidad;
    }

    public List<SucursalBancaria> getSucursalesBancarias() {
        return sucursalesBancarias;
    }

    public void setSucursalesBancarias(List<SucursalBancaria> sucursalesBancarias) {
        this.sucursalesBancarias = sucursalesBancarias;
    }
    
    
    
}
