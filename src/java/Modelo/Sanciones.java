/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Marlon
 */
@Entity
@Table(name = "sanciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sanciones.findAll", query = "SELECT s FROM Sanciones s")
    , @NamedQuery(name = "Sanciones.findById", query = "SELECT s FROM Sanciones s WHERE s.id = :id")
    , @NamedQuery(name = "Sanciones.findByFechaSancion", query = "SELECT s FROM Sanciones s WHERE s.fechaSancion = :fechaSancion")
    , @NamedQuery(name = "Sanciones.findByMulta", query = "SELECT s FROM Sanciones s WHERE s.multa = :multa")
    , @NamedQuery(name = "Sanciones.findByDuracionSancion", query = "SELECT s FROM Sanciones s WHERE s.duracionSancion = :duracionSancion")})
public class Sanciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_sancion")
    @Temporal(TemporalType.DATE)
    private Date fechaSancion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "multa")
    private int multa;
    @Basic(optional = false)
    @NotNull
    @Column(name = "duracion_sancion")
    private int duracionSancion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sancionesid")
    private Collection<Reportes> reportesCollection;
    @JoinColumn(name = "Cliente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Clientes clienteid;

    public Sanciones() {
    }

    public Sanciones(Integer id) {
        this.id = id;
    }

    public Sanciones(Integer id, Date fechaSancion, int multa, int duracionSancion) {
        this.id = id;
        this.fechaSancion = fechaSancion;
        this.multa = multa;
        this.duracionSancion = duracionSancion;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFechaSancion() {
        return fechaSancion;
    }

    public void setFechaSancion(Date fechaSancion) {
        this.fechaSancion = fechaSancion;
    }

    public int getMulta() {
        return multa;
    }

    public void setMulta(int multa) {
        this.multa = multa;
    }

    public int getDuracionSancion() {
        return duracionSancion;
    }

    public void setDuracionSancion(int duracionSancion) {
        this.duracionSancion = duracionSancion;
    }

    @XmlTransient
    public Collection<Reportes> getReportesCollection() {
        return reportesCollection;
    }

    public void setReportesCollection(Collection<Reportes> reportesCollection) {
        this.reportesCollection = reportesCollection;
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
        if (!(object instanceof Sanciones)) {
            return false;
        }
        Sanciones other = (Sanciones) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Sanciones[ id=" + id + " ]";
    }
    
}
