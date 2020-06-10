package br.com.fatec.bean;

public class InquilinoImovel {
    
    private int idImoInq;
    private int idImovel;
    private int idinquilino;
    private String obs;
    private Imovel imovel;
    private Inquilino inquilino;

    public InquilinoImovel(int idImoInq, int idImovel, int idinquilino, String obs) {
        this.idImoInq = idImoInq;
        this.idImovel = idImovel;
        this.idinquilino = idinquilino;
        this.obs = obs;
    }

    public int getIdImoInq() {
        return idImoInq;
    }

    public void setIdImoInq(int idImoInq) {
        this.idImoInq = idImoInq;
    }

    public int getIdImovel() {
        return idImovel;
    }

    public void setIdImovel(int idImovel) {
        this.idImovel = idImovel;
    }

    public int getIdinquilino() {
        return idinquilino;
    }

    public void setIdinquilino(int idinquilino) {
        this.idinquilino = idinquilino;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs) {
        this.obs = obs;
    }

    public Imovel getImovel() {
        return imovel;
    }

    public void setImovel(Imovel imovel) {
        this.imovel = imovel;
    }

    public Inquilino getInquilino() {
        return inquilino;
    }

    public void setInquilino(Inquilino inquilino) {
        this.inquilino = inquilino;
    }

    @Override
    public String toString() {
        return "imovel_inquilino{" + "idImoInq=" + idImoInq + ", idImovel=" + idImovel + ", idinquilino=" + idinquilino + ", obs=" + obs + ", imovel=" + imovel + ", inquilino=" + inquilino + '}';
    }
}
