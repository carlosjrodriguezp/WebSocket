package com.wstesting;

import javax.websocket.OnMessage;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/mensaje")
public class MiWebSocket{
   
    @OnMessage
    public String mensaje(String text) throws InterruptedException{
        
        Thread.sleep(4000);
        
        System.out.println("TESTING");
        return "response: " + text;
    }
    
    
}
