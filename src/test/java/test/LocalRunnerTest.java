package test;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

class LocalRunnerTest {
    private static final Logger logger = LoggerFactory.getLogger(LocalRunnerTest.class);

    @Test
    void testParallel() {
        Results results = Runner.path("classpath:test")
                //.outputCucumberJson(true)
                .parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
