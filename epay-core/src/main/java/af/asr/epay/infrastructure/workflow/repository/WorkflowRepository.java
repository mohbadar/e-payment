package af.asr.epay.infrastructure.workflow.repository;

import af.asr.epay.infrastructure.workflow.model.Workflow;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface WorkflowRepository extends JpaRepository<Workflow, String>{
    List<Workflow> findByObjectType(String objectType);
}
