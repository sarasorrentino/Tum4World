package com.example.tum4world_33;

public enum AccountType {
    SIMPATIZZANTE(0), ADERENTE(1), AMMINISTRATORE(2);

    private int tipo;
    AccountType(int i) {
        tipo = i;
    }
    public int getTipo() {
        return tipo;
    }
    static public AccountType getEnum(int n){
        switch(n){
            case 0: return AccountType.SIMPATIZZANTE;
            case 1: return AccountType.ADERENTE;
            case 2: return AccountType.AMMINISTRATORE;
        }

        return AccountType.SIMPATIZZANTE;
    }
}