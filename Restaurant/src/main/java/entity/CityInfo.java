package entity;

import dto.CityInfoDTO;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class CityInfo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    private String zip;
    private String city;

    public CityInfo() {
    }

    public CityInfo(CityInfoDTO dto) {
        this.city = dto.city;
        this.zip = dto.zip;
    }

    public CityInfo(String zip, String city) {
        this.zip = zip;
        this.city = city;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

}
