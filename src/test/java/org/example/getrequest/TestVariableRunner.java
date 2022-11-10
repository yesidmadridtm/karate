package org.example.getrequest;

import com.intuit.karate.junit5.Karate;

public class TestVariableRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("variables").relativeTo(getClass());
    }
}
