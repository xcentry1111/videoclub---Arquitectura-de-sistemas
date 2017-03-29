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
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Marlon
 */
@Entity
@Table(name = "liquidaciones")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Liquidaciones.findAll", query = "SELECT l FROM Liquidaciones l")
    , @NamedQuery(name = "Liquidaciones.findById", query = "SELECT l FROM Liquidaciones l WHERE l.id = :id")
    , @NamedQuery(name = "Liquidaciones.findByDiasLaborados", query = "SELECT l FROM Liquidaciones l WHERE l.diasLaborados = :diasLaborados")})
public class Liquidaciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "dias_laborados")
    private int diasLaborados;
    @JoinColumn(name = "Empleado_id", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Empleados empleadoid;

    public Liquidaciones() {
    }

    public Liquidaciones(Integer id) {
        this.id = id;
    }

    public Liquidaciones(Integer id, int diasLaborados) {
        this.id = id;
        this.diasLaborados = diasLaborados;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getDiasLaborados() {
        return diasLaborados;
    }

    public void setDiasLaborados(int diasLaborados) {
        this.diasLaborados = diasLaborados;
    }

    public Empleados getEmpleadoid() {
        return empleadoid;
    }

    public void setEmpleadoid(Empleados empleadoid) {
        this.empleadoid = empleadoid;
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
        if (!(object instanceof Liquidaciones)) {
            return false;
        }
        Liquidaciones other = (Liquidaciones) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Modelo.Liquidaciones[ id=" + id + " ]";
    }
    
}
