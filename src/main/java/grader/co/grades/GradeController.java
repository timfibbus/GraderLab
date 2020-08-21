package grader.co.grades;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GradeController {

	// Autowired tells spring to fill in the dao variable automatically
	// when the application starts.
	@Autowired
	private GradeDao dao;

	@RequestMapping("/")
	public String index() {
		return "redirect:/grade-list";
	}

	@RequestMapping("/grade-list")
	public String list(Model model) {
		List<Grade> grades = dao.findAll();
		model.addAttribute("grades", grades);
		return "grade-list";
	}

	@RequestMapping("/grade-list/detail")
	public String detail(@RequestParam("id") Long id, Model model) {
		Grade grade = dao.findById(id);
		model.addAttribute("grade", grade);
		return "detail";
	}

	@RequestMapping("/grade-list/delete-confirm")
	public String deleteQuestionMark(@RequestParam("id") Long id,  Model model, Grade grade) {
		dao.delete(id);
		return "/grade-list";
	}
	
	/*
	@RequestMapping("/grade-list/delete-confirm/delete")
	public String delete(Model model, Grade grade) {
		
	}
	*/
	@RequestMapping("/grade-list/add-grade")
	public String showAdd() {		
		return "/add-grade";
	}

	@PostMapping("/grade-list/add-grade/confirm-add")
	public String submitAdd(Model model, Grade grade) {
		model.addAttribute("grade", grade);
		model.addAttribute("string", grade.toString());
		return "/confirm-add";
	}

	@PostMapping("/yes")
	public String addIt(Model model, Grade grade) {
		model.addAttribute("grade",grade);
		dao.create(grade);
		return "redirect:/grade-list";
	}
	
	@RequestMapping("/forgetit")
	public String forgetIt() {
		return "redirect:/grade-list";
	}
}