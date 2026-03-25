package com.internship.project.dto;

import jakarta.validation.constraints.NotNull;

public record AssignTaskRequest(@NotNull Long userId) {
}
