package net.skhu.dto;

import lombok.Data;

@Data
public class Assignment {
	int id;
	int projectId;
	int engineerId;

	Engineer engineer;
}
