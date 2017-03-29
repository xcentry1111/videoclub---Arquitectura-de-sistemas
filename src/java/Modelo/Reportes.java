/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Marlon
 */
@Entity
@Table(name = "reportes")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Reportes.findAll", query = "SELECT r FROM Reportes r")
    , @NamedQuery(name = "Reportes.findById", query = "SELECT r FROM Reportes r WHERE r.id = :id")})
public class Reportes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @JoinColumn(name = "Prestamos_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Prestamos prestamosid;
    @JoinColumn(name = "Devoluciones_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Devoluciones devolucionesid;
    @JoinColumn(name = "Sanciones_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Sanciones sancionesid;
    @JoinColumn(name = "Cliente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Clientes clienteid;

    public Reportes() {
    }

    public Reportes(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Prestamos getPrestamosid() {
        return prestamosid;
    }

    public void setPrestamosid(Prestamos prestamosid) {
        this.prestamosid = prestamosid;
    }

    public Devoluciones getDevolucionesid() {
        return devolucionesid;
    }

    public void setDevolucionesid(Devoluciones devolucionesid) {
        this.devolucionesid = devolucionesid;
    }

    public Sanciones getSancionesid() {
        return sancionesid;
    }

    public void setSancionesid(Sanciones sancionesid) {
        this.sancionesid = sancionesid;
    }

    public Clientes getClienteid() {
        return clienteid;
    }

    public void setClienteid(Clientes clienteid) {
        this.clienteid = clienteid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reportes)) {
            return false;
        }
        Reportes other = (Reportes) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Reportes[ id=" + id + " ]";
    }
    
}
