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
import com.example.springmall.sample.vo.SampleRequest;

@Controller
public class SampleController {
	@Autowired
	private SampleService sampleService;
	
	// 1. 리스트
	@RequestMapping(value="/sample/sampleList",method=RequestMethod.GET)
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
	
	// 2. 삭제 
	@RequestMapping(value="/sample/removeSample",method=RequestMethod.GET)
	public String removeSample(@RequestParam(value="sampleNo") int sampleNo) {
		sampleService.removeSample(sampleNo); 
		return "redirect:/sample/sampleList";
	}
	
	// 3-1. 입력  폼
	@RequestMapping(value="/sample/addSample",method=RequestMethod.GET)
	public String addSample() {
		return "/sample/addSample";	
		// jquery, bootstrap, commmand객체
	}
	
	// 3-2. 입력 액션
	@RequestMapping(value="/sample/addSample",method=RequestMethod.POST)
	public String addSample(SampleRequest sampleRequest) {
		// - Sample 친구들
		// command객체의 멤버변수 == input태그 name속성, setter
		System.out.println("SampleRequest.multipartFile:"+sampleRequest.getMultipartFile());
		int row = sampleService.addSample(sampleRequest);
		return "redirect:/sample/sampleList";
	}
	
	// 4-1. 수정 폼
	@RequestMapping(value="/sample/modifySample", method=RequestMethod.GET)
	public String modifySample(Model model, @RequestParam(value="sampleNo",defaultValue="1")int sampleNo) {
		Sample sample = sampleService.getSample(sampleNo);
		model.addAttribute("sample", sample);
		return "/sample/modifySample";
		
	}
	// 4-2. 수정 액션
	@RequestMapping(value="/sample/modifySample", method=RequestMethod.POST)
	public String modifySample(Sample sample) {
		sampleService.modifySample(sample);
		return "redirect:/sample/sampleList";
	}
}