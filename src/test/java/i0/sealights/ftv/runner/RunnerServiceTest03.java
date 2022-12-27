package i0.sealights.ftv.runner;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

public class RunnerServiceTest03 {

    final String targetServerUrl = "http://localhost:8080";
    final RestTemplate restTemplate = new RestTemplate();

    @BeforeEach
    void before() {
        sleepBefore();
    }

    @AfterEach
    void after() {
        sleep();
    }

    @RepeatedTest(10)
    void shouldReturnEchoResponseForPhrase_randomName() {
        // given
        final String phraseToEcho = NamesGenerator.generateName();

        // when
        ResponseEntity<String> response = restTemplate.getForEntity(
            targetServerUrl + "/echo/" + phraseToEcho,
            String.class);

        sleep();

        // then
        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals("PONG: " + phraseToEcho, response.getBody());
    }

    @Test
    void shouldReturnEchoResponseForPhrase_ping() {
        // given
        final String phraseToEcho = "ping";

        // when
        ResponseEntity<String> response = restTemplate.getForEntity(
            targetServerUrl + "/echo/" + phraseToEcho,
            String.class);

        sleep();

        // then
        assertEquals(HttpStatus.OK, response.getStatusCode());
        assertEquals("PONG: ping", response.getBody());
    }

    @Test
    void shouldReturnEchoResponseForPhrase_asterisk() {
        // given
        final String phraseToEcho = "*asterisk";

        // when
        HttpClientErrorException exception = assertThrows(HttpClientErrorException.class, () -> {
            restTemplate.getForEntity(
                targetServerUrl + "/echo/" + phraseToEcho,
                String.class);
        });

        sleep();

        // then
        assertEquals(HttpStatus.BAD_REQUEST, exception.getStatusCode());
        assertEquals(exception.getResponseBodyAsString(), "bad to the bone");
    }

    @Test
    void shouldReturnHelloWorld() {
        // when
        ResponseEntity<String> actualResponse = restTemplate.getForEntity(
            targetServerUrl + "/hello",
            String.class);

        sleep();

        // then
        assertEquals(HttpStatus.OK, actualResponse.getStatusCode());
        assertEquals(actualResponse.getBody(), "Hello World!");
    }

    private static void sleep() {
        try {
            Thread.sleep(2_000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    private static void sleepBefore() {
        try {
            Thread.sleep(12_000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

//
//    @Test
//    public void printSystemProps() {
//        System.getenv().forEach((key, value) -> {
//            System.out.println("ENV:  " + key + " => " + value);
//        });
//
//        System.getProperties().entrySet().forEach(entry -> {
//            System.out.println("PRO:  " + entry.getKey() + " => " + entry.getValue());
//        });
//
//        new RestTemplate().getForEntity(
//            "http://localhost:8080/echo/blah",
//            String.class);
//
//        assert true;
//    }

}
