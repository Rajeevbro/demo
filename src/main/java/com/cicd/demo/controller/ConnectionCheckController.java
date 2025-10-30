package com.cicd.demo.controller;


import com.cicd.demo.dto.ResponseMessage;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class ConnectionCheckController {


    @GetMapping("/connection")
    public ResponseEntity<ResponseMessage> checkConnection() {

        ResponseMessage responseMessage = ResponseMessage.builder()
                .responseMessage("Connection successful!")
                .volatileFieldMessage("This is dev environment")
                .build();

        return new  ResponseEntity<>(responseMessage, HttpStatus.OK);

    }

}
