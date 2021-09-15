/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.unipiloto;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.Period;

/**
 *
 * @author admin
 */
public class userHandler {

    private String name;
    private String date;

    public userHandler() {
        this.name = "";
        this.date = null;
    }

    public String getDate() throws ParseException {
        LocalDate localDate = LocalDate.parse(date);
        return String.valueOf(Period.between(localDate, LocalDate.now()).getYears());
    }

    public void setDate(String date) {
        this.date = date;

    }

    public String getName() {
        return name + ", ";
    }

    public void setName(String name) {
        this.name = name;
    }
}
