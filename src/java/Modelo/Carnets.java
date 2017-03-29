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
import javax.persistence.Lob;
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
@Table(name = "carnets")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Carnets.findAll", query = "SELECT c FROM Carnets c")
    , @NamedQuery(name = "Carnets.findById", query = "SELECT c FROM Carnets c WHERE c.id = :id")
    , @NamedQuery(name = "Carnets.findByNumero", query = "SELECT c FROM Carnets c WHERE c.numero = :numero")
    , @NamedQuery(name = "Carnets.findByFechaInicio", query = "SELECT c FROM Carnets c WHERE c.fechaInicio = :fechaInicio")
    , @NamedQuery(name = "Carnets.findByFechaTermino", query = "SELECT c FROM Carnets c WHERE c.fechaTermino = :fechaTermino")})
public class Carnets implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Numero")
    private int numero;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_inicio")
    @Temporal(TemporalType.DATE)
    private Date fechaInicio;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fecha_termino")
    @Temporal(TemporalType.DATE)
    private Date fechaTermino;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Column(name = "vencimiento")
    private byte[] vencimiento;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "carnetid")
    private Collection<Clientes> clientesCollection;

    public Carnets() {
    }

    public Carnets(Integer id) {
        this.id = id;
    }

    public Carnets(Integer id, int numero, Date fechaInicio, Date fechaTermino, byte[] vencimiento) {
        this.id = id;
        this.numero = numero;
        this.fechaInicio = fechaInicio;
        this.fechaTermino = fechaTermino;
        this.vencimiento = vencimiento;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaTermino() {
        return fechaTermino;
    }

    public void setFechaTermino(Date fechaTermino) {
        this.fechaTermino = fechaTermino;
    }

    public byte[] getVencimiento() {
        return vencimiento;
    }

    public void setVencimiento(byte[] vencimiento) {
        this.vencimiento = vencimiento;
    }

    @XmlTransient
    public Collection<Clientes> getClientesCollection() {
        return clientesCollection;
    }

    public void setClientesCollection(Collection<Clientes> clientesCollection) {
        this.clientesCollection = clientesCollection;
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
        if (!(object instanceof Carnets)) {
            return false;
        }
        Carnets other = (Carnets) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Carnets[ id=" + id + " ]";
    }
    
}
