package pl.coderslab.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.time.LocalDate;

public class WebpageValidator implements ConstraintValidator<Webpage, String> {

    @Override
    public void initialize(Webpage webpage) {




    }
    @Override
    public boolean isValid(String webpage, ConstraintValidatorContext context) {

        try {










            return webpage.length() >= 2;


        } catch (Exception e) {


            return false;

        }


    }






}
