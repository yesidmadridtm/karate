package org.example;

import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ParallelRunner {

    @Test
    public void execute(){
        //Runner.parallel(getClass(), 5);
        Runner.Builder aRunner = new Runner.Builder();
        aRunner.path("classpath:org/example/getrequest");
        aRunner.parallel(5);
        //Runner.parallel(aRunner);
    }
}
