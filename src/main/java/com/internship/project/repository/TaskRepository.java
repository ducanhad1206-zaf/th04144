package com.internship.project.repository;

import com.internship.project.entity.TaskEntity;
import com.internship.project.enums.TaskStatus;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TaskRepository extends JpaRepository<TaskEntity, Long> {
    List<TaskEntity> findByProjectId(Long projectId);

    List<TaskEntity> findByAssigneeId(Long assigneeId);

    List<TaskEntity> findByStatus(TaskStatus status);
}
