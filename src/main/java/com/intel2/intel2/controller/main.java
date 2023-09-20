
package com.potato.fanpage;

 

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

 

@Controller

public class PotatoController{

 

    @GetMapping("/")

    public String main(){

        return "main";

    }

 

}package com.intel2.intel2.controller;

public class main {
    
}
