package com.lucferbux.springdemo;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringDemoApplicationTests {

	@Autowired
	private SpringDemoApplication springDemo;

	@Test
	void contextLoads() throws Exception {
		assertNull(springDemo);
	}

}
