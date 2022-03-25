package org.ac.cst8277.hermouche.ibrahim.meso;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MessageController {

    @Autowired
    MessageRepository messageRepository;

    @GetMapping("/messages")
    public @ResponseBody Iterable<Message> getAllMessages(){return messageRepository.findAll();}

    @GetMapping("/producer")
    public @ResponseBody Iterable<Message> getMessageProducer(@RequestParam String producerid){
        return messageRepository.findProducerMessage(producerid);
    }

//    @GetMapping("subscriber")
//    public @ResponseBody Iterable<Message> getMessageSubscriber(@RequestParam String subscribeid){
//        return messageRepository.findSubscriberMessage(subscribeid);
//    }

    @GetMapping("/welcome")
    public String showWelcome(){return "Welcome to Message Service hosted on k8s!";}

}
