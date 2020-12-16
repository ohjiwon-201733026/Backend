package net.skhu.dto;

import java.util.List;

public class Project {

	int id;
	String title;
	int managerId;
	int progress;
	String priority;

	List<Assignment> assignments;
}
