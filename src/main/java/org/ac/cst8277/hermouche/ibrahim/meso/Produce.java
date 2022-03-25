package org.ac.cst8277.hermouche.ibrahim.meso;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "produce")
public class Produce {
    @Id
    private String producerid;
    private String producerfirstname;
    private String producerlastname;

    public String getProducerid() {
        return producerid;
    }

    public void setProducerid(String producerid) {
        this.producerid = producerid;
    }

    public String getProducerfirstname() {
        return producerfirstname;
    }

    public void setProducerfirstname(String producerfirstname) {
        this.producerfirstname = producerfirstname;
    }

    public String getProducerlastname() {
        return producerlastname;
    }

    public void setProducerlastname(String producerlastname) {
        this.producerlastname = producerlastname;
    }
}
