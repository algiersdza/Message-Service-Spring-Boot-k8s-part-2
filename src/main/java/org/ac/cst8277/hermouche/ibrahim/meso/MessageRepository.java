package org.ac.cst8277.hermouche.ibrahim.meso;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface MessageRepository extends CrudRepository<Message, Integer> {

    @Query("FROM Message WHERE producerid = ?1")
    List<Message> findProducerMessage(String producerid);

}
