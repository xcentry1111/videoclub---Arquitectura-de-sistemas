/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Marlon
 */
@Entity
@Table(name = "devoluciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Devoluciones.findAll", query = "SELECT d FROM Devoluciones d")
    , @NamedQuery(name = "Devoluciones.findById", query = "SELECT d FROM Devoluciones d WHERE d.id = :id")
    , @NamedQuery(name = "Devoluciones.findByEstadoPelicula", query = "SELECT d FROM Devoluciones d WHERE d.estadoPelicula = :estadoPelicula")})
public class Devoluciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "estado_pelicula")
    private int estadoPelicula;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "devolucionesid")
    private Collection<Reportes> reportesCollection;
    @JoinColumn(name = "Prestamo_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Prestamos prestamoid;

    public Devoluciones() {
    }

    public Devoluciones(Integer id) {
        this.id = id;
    }

    public Devoluciones(Integer id, int estadoPelicula) {
        this.id = id;
        this.estadoPelicula = estadoPelicula;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getEstadoPelicula() {
        return estadoPelicula;
    }

    public void setEstadoPelicula(int estadoPelicula) {
        this.estadoPelicula = estadoPelicula;
    }

    @XmlTransient
    public Collection<Reportes> getReportesCollection() {
        return reportesCollection;
    }

    public void setReportesCollection(Collection<Reportes> reportesCollection) {
        this.reportesCollection = reportesCollection;
    }

    public Prestamos getPrestamoid() {
        return prestamoid;
    }

    public void setPrestamoid(Prestamos prestamoid) {
        this.prestamoid = prestamoid;
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
        if (!(object instanceof Devoluciones)) {
            return false;
        }
        Devoluciones other = (Devoluciones) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Devoluciones[ id=" + id + " ]";
    }
    
}
