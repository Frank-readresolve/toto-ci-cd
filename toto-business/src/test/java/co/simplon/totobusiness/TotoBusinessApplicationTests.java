package co.simplon.totobusiness;

import static org.hamcrest.CoreMatchers.is;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class TotoBusinessApplicationTests extends BaseMvcTests {

    @DisplayName("The \"/ping\" endpoint should return string \"pong\"")
    @Test
    void shouldPingReturnPong() throws Exception {
	final var builder = newGetRequestBuilder("/ping");
	api.perform(builder).andExpect(status().isOk())
		.andExpect(content().string("pong"));
    }

    @DisplayName("The \"/toto/hello\" endpoint should return the name \"Toto Test\" in the JSON body")
    @Test
    void shouldHelloReturnTotoName() throws Exception {
	final var builder = newGetRequestBuilder("/toto/hello");
	api.perform(builder).andExpect(status().isOk())
		.andExpect(jsonPath("$.name", is("Toto Test")));
    }

}
