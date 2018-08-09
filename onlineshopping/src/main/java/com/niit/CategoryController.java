package com.niit;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CategoryDAO;



import com.niit.model.Category;
import com.niit.model.Product;


@Controller

public class CategoryController {

	@Autowired
	CategoryDAO categoryDAO;

	

	

	/* Admin Controller */
	@RequestMapping(value="/Admin")
	public String adminPage(@ModelAttribute("category")Category category) {
		return "Admin";
	}
	

	/*Adding category into database*/
	@RequestMapping(value = "/saveCate", method = RequestMethod.POST)
	public ModelAndView saveCategotyData(@RequestParam("categoryId") int categoryId, @RequestParam("categoryName") String categoryName,
			@RequestParam("categoryDesc")String categoryDesc ) {
		ModelAndView mv = new ModelAndView("index");
		Category category = new Category();
		category.setCategoryId(categoryId);
		category.setCategoryName(categoryName);
		category.setCategoryDesc(categoryDesc);
		mv.addObject("category", category);
		categoryDAO.addCategory(category);
		mv.addObject("msg", "Category \'" + categoryId + " - " + categoryName  + "\' Added Successfully");
		System.out.println("Category " + categoryName + " Added Successfully");
		mv.setViewName("index");
		return mv;
	}
}