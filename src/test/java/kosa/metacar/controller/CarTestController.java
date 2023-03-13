package kosa.metacar.controller;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import kosa.metacar.dto.Have_CarDTO;
import kosa.metacar.service.CarService;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"
})

@Log4j
public class CarTestController {
	
	@Autowired
	private WebApplicationContext ctx; //spring container / context	
	private MockMvc mockMvc; //Server
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	/*
	@Test
	public void testList() throws Exception{
		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/metaCar/main"))
					.andReturn()
					.getModelAndView()
					.getModelMap()
				);
	}
	*/
	
	/*
	@Test
	public void testListPaging() throws Exception{
		log.info(mockMvc.perform(
				MockMvcRequestBuilders.get("/metaCar/main")
				.param("pageNum","1")
				.param("amount","6"))
				.andReturn().getModelAndView().getModelMap());
	}
	*/
	
	
	@Test
	public void testdetail() throws Exception{	
		log.info(mockMvc.perform(MockMvcRequestBuilders
				.get("/metaCar/detailcar")
				.param("carNum","321루7449"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	
}
