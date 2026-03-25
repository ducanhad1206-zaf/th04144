package com.internship.project.dto;

import jakarta.validation.constraints.NotNull;

public record ProjectMemberRequest(@NotNull Long userId) {
}
