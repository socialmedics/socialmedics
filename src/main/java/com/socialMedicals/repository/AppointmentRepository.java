package com.socialMedicals.repository;


        import com.socialMedicals.entity.Appointment;
        import org.springframework.data.jpa.repository.JpaRepository;
        import org.springframework.stereotype.Repository;

        import java.util.ArrayList;
        import java.util.List;

/**
 * Created by Nick on 02/04/2017.
 */
@Repository
public interface AppointmentRepository extends JpaRepository<Appointment,Integer> {
    ArrayList<Appointment> findByEmail(String email);
}
