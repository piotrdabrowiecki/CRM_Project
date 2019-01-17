package pl.coderslab.model;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.URL;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

@Entity
@Table(name = "projects")
public class Project {



    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @URL
    private String www;

    @NotNull
    private boolean activity;

   /*
    private String Identifier(String name){

        StringTokenizer tokenizer = new StringTokenizer(name, " ");

        StringBuilder builder = new StringBuilder();

        while (tokenizer.hasMoreElements()) {

            String token = tokenizer.nextElement().toString();

            builder.append(token+"-");

        }

        String identifier = builder.toString();

        return identifier;

    }

    public String getIdentifier() {
        return identifier;
    }

    public void setIdentifier(String identifier) {
        this.identifier = identifier;
    }

    */

    @NotNull
    private String name;


    @LazyCollection(LazyCollectionOption.FALSE)
    @ManyToMany
    @JoinTable(name = "users_projects", joinColumns = @JoinColumn(name = "projects_id"), inverseJoinColumns = @JoinColumn(name = "users_id"))
    private List<User> users = new ArrayList<>();

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    @LazyCollection(LazyCollectionOption.FALSE)
    @OneToMany(mappedBy = "project" )
    private List<Task> tasks = new ArrayList<>();




    @Column(length = 600)
    @Size(max = 600)
    private String description;


    private Date created = new Date();


    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getWww() {
        return www;
    }

    public void setWww(String www) {
        this.www = www;
    }

    public boolean isActivity() {
        return activity;
    }

    public void setActivity(boolean activity) {
        this.activity = activity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }


    @Override
    public String toString() {
        return "Project{" +
                ", www='" + www + '\'' +
                ", activity=" + activity +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", created=" + created +
                '}';
    }





}
