package grader.co.grades;

public class Grade {

	private Long id;
	private String name;
	private String type;
	private double score;
	private double total;

	public Grade() {
		}

	public Grade(Long id, String name, String type, double score, double total) {
			super();
			this.id = id;
			this.name = name;
			this.type = type;
			this.score = score;
			this.total = total;
		}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Grade:  id:" + id + ", name:" + name + ", type:" + type + ", score:" + score + ", total:" + total + "";
	}


}
