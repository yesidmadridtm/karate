package org.example.getrequest;

import com.intuit.karate.junit5.Karate;

public class TestJsonValidationRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("validateJSONResponse").relativeTo(getClass());
    }
}
