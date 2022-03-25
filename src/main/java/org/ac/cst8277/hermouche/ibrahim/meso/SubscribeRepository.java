package org.ac.cst8277.hermouche.ibrahim.meso;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface SubscribeRepository extends CrudRepository<Subscribe, String> {

    @Query(value = "SELECT subscribe.subscriberid, subscribe.subscriberfirstname, subscribe.subscriberlastname, produce.producerfirstname, " +
            "message.messageid, message.messagecontent FROM subscribe " +
            "INNER JOIN produce_subscribe ON subscribe.subscriberid = produce_subscribe.subscriberid " +
            "INNER JOIN produce ON produce_subscribe.producerid = produce.producerid " +
            "INNER JOIN message ON produce.producerid = message.producerid " +
            "WHERE subscribe.subscriberid = ?1", nativeQuery = true)
    List<Subscribe> getAllMessagesForSubscriber(String subscriberid);


}
