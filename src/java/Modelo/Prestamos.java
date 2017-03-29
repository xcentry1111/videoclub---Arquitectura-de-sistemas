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
@Table(name = "prestamos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Prestamos.findAll", query = "SELECT p FROM Prestamos p")
    , @NamedQuery(name = "Prestamos.findById", query = "SELECT p FROM Prestamos p WHERE p.id = :id")
    , @NamedQuery(name = "Prestamos.findByFechaDevolucion", query = "SELECT p FROM Prestamos p WHERE p.fechaDevolucion = :fechaDevolucion")
    , @NamedQuery(name = "Prestamos.findByPago", query = "SELECT p FROM Prestamos p WHERE p.pago = :pago")})
public class Prestamos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_devolucion")
    @Temporal(TemporalType.DATE)
    private Date fechaDevolucion;
    @Basic(optional = false)
    @NotNull
    @Column(name = "pago")
    private int pago;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "prestamosid")
    private Collection<Reportes> reportesCollection;
    @JoinColumn(name = "Cliente_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Clientes clienteid;
    @JoinColumn(name = "Pelicula_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Peliculas peliculaid;
    @JoinColumn(name = "Empleado_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Empleados empleadoid;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "prestamoid")
    private Collection<Devoluciones> devolucionesCollection;

    public Prestamos() {
    }

    public Prestamos(Integer id) {
        this.id = id;
    }

    public Prestamos(Integer id, Date fechaDevolucion, int pago) {
        this.id = id;
        this.fechaDevolucion = fechaDevolucion;
        this.pago = pago;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFechaDevolucion() {
        return fechaDevolucion;
    }

    public void setFechaDevolucion(Date fechaDevolucion) {
        this.fechaDevolucion = fechaDevolucion;
    }

    public int getPago() {
        return pago;
    }

    public void setPago(int pago) {
        this.pago = pago;
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

    public Peliculas getPeliculaid() {
        return peliculaid;
    }

    public void setPeliculaid(Peliculas peliculaid) {
        this.peliculaid = peliculaid;
    }

    public Empleados getEmpleadoid() {
        return empleadoid;
    }

    public void setEmpleadoid(Empleados empleadoid) {
        this.empleadoid = empleadoid;
    }

    @XmlTransient
    public Collection<Devoluciones> getDevolucionesCollection() {
        return devolucionesCollection;
    }

    public void setDevolucionesCollection(Collection<Devoluciones> devolucionesCollection) {
        this.devolucionesCollection = devolucionesCollection;
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
        if (!(object instanceof Prestamos)) {
            return false;
        }
        Prestamos other = (Prestamos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Prestamos[ id=" + id + " ]";
    }
    
}
