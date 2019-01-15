package pl.coderslab.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Project;
import pl.coderslab.model.Task;
import pl.coderslab.model.User;


import java.util.List;

public interface ProjectRepository extends JpaRepository<Project, Long> {



    List<Project> findByUsersId(Long UserId);



}