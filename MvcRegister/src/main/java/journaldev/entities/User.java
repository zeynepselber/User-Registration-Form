package journaldev.entities;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="users")
public class User implements Serializable {

    @Id
    @GeneratedValue(generator="increment" , strategy = GenerationType.IDENTITY)
    @GenericGenerator(name="increment", strategy = "increment" )
    @Column(name = "id", columnDefinition = "int", unique = true )
    private int id;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "blood_group")
    private String bloodGroup;

    @Column(name = "gsm_phone")
    private String gsmPhone;

    @Column(name = "address")
    private String address;

    public User() { }

    public User(String firstName, String lastName , String bloodGroup , String gsmPhone , String address) {

        this.firstName  = firstName;
        this.lastName   = lastName;
        this.bloodGroup = bloodGroup;
        this.gsmPhone   = gsmPhone;
        this.address    = address;
    }

    public User(int id, String firstName, String lastName , String bloodGroup , String gsmPhone , String address) {

        this.id = id;
        this.firstName  = firstName;
        this.lastName   = lastName;
        this.bloodGroup = bloodGroup;
        this.gsmPhone   = gsmPhone;
        this.address    = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) { this.id = id; }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) { this.firstName = firstName; }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getBloodGroup() {
        return bloodGroup;
    }

    public void setBloodGroup(String bloodGroup) { this.bloodGroup = bloodGroup; }

    public String getGsmPhone() {
        return gsmPhone;
    }

    public void setGsmPhone(String gsmPhone) { this.gsmPhone = gsmPhone ; }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) { this.address = address; }
}
