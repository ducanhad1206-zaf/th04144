package com.internship.project.repository;

import com.internship.project.entity.ProjectMemberEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectMemberRepository extends JpaRepository<ProjectMemberEntity, Long> {
    boolean existsByProjectIdAndUserIdAndActiveTrue(Long projectId, Long userId);
}
