package com.example.tum4world_33;

import java.io.Serializable;

public class Counters implements Serializable {

    //Contatori per ogni pagina
    String name;
    int value;

    Counters(){}

    public void setName(String n){
        this.name = n;
    }

    public void setValue(int v){
        this.value = v;
    }

    public String getName() {
        return name;
    }

    public int getValue() {
        return value;
    }
}
