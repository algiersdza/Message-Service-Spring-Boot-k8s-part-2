package org.ac.cst8277.hermouche.ibrahim.meso;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SubscribeController {

    @Autowired
    SubscribeRepository subscribeRepository;

    @GetMapping("/subscriber")
    public @ResponseBody Iterable<Subscribe> getSubscriberMessages(@RequestParam String subscriberid){
        return subscribeRepository.getAllMessagesForSubscriber(subscriberid);
    }

}
