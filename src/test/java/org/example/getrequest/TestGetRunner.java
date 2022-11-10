package org.example.getrequest;

import com.intuit.karate.junit5.Karate;

public class TestGetRunner {
    @Karate.Test
    public Karate runTest(){
        return Karate.run("getRequest", "responseMatcher").relativeTo(getClass());
    }

    @Karate.Test
    public Karate runTestUsingClassPath(){
        return Karate.run("classpath:org/example/getrequest/getRequest.feature");
    }

}
