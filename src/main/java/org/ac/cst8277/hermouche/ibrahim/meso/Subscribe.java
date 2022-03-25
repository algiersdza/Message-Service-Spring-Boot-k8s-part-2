package org.ac.cst8277.hermouche.ibrahim.meso;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "subscribe")
public class Subscribe {
    @Id
    private String subscriberid;
    private String subscriberfirstname;
    private String subscriberlastname;

    public String getSubscriberid() {
        return subscriberid;
    }

    public void setSubscriberid(String subscriberid) {
        this.subscriberid = subscriberid;
    }

    public String getSubscriberfirstname() {
        return subscriberfirstname;
    }

    public void setSubscriberfirstname(String subscriberfirstname) {
        this.subscriberfirstname = subscriberfirstname;
    }

    public String getSubscriberlastname() {
        return subscriberlastname;
    }

    public void setSubscriberlastname(String subscriberlastname) {
        this.subscriberlastname = subscriberlastname;
    }
}
