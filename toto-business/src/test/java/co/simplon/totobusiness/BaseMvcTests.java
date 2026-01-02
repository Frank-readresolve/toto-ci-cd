package co.simplon.totobusiness;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootTest(classes = TotoBusinessApplication.class)
@AutoConfigureMockMvc
@ActiveProfiles(value = "test")
public abstract class BaseMvcTests {

    @Autowired
    protected MockMvc api;



    protected MockHttpServletRequestBuilder newGetRequestBuilder(
	    final String uri) {
	return MockMvcRequestBuilders.get(uri);
    }

}