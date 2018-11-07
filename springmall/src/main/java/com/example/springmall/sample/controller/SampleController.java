package com.example.springmall.sample.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.springmall.sample.service.SampleService;
import com.example.springmall.sample.vo.Sample;

@Controller
public class SampleController {
	@Autowired
	private SampleService sampleService;
	@RequestMapping(value="/sample/sampleList",method=RequestMethod.GET)
	// Spring 에서는 매개변수 model 의 객체를 Spring 에서 생성해준다.
	public String sampleList(Model model,@RequestParam(value="startRow",required=false,defaultValue="0") int startRow) {
	
		System.out.println("sampleList()");
		List<Sample> sampleList = sampleService.getSampleAll(startRow);
		int totalCount = sampleService.getTotalCount();
		model.addAttribute("startRow",startRow);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("sampleList", sampleList);
		System.out.println(sampleList);
		return "/sample/sampleList";
		
	}
	
	//2 삭제 
	@RequestMapping(value="/sample/removeSample",method=RequestMethod.GET)
	public String removeSample(@RequestParam(value="sampleNo") int sampleNo) {
		sampleService.removeSample(sampleNo); 
		return "redirect:/sample/sampleList";
	}
}
	// 3-1. 입력 
	// 3-2. 입력액션

