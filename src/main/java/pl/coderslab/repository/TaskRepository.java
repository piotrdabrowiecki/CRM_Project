package pl.coderslab.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.model.Task;



import java.util.List;

public interface TaskRepository extends JpaRepository<Task, Long> {








}