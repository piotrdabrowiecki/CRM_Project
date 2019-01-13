package pl.coderslab.converter;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.model.Status;
import pl.coderslab.model.User;
import pl.coderslab.repository.StatusRepository;
import pl.coderslab.repository.UserRepository;


public class StatusConverter implements Converter<String, Status> {


    @Autowired
    private StatusRepository statusRepository;


    @Override
    public Status convert(String s){


        return statusRepository.findOne(Long.parseLong(s));

    }





}