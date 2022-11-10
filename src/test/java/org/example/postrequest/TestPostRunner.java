package org.example.postrequest;

import com.intuit.karate.junit5.Karate;

public class TestPostRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("createUser", "validateSchema").relativeTo(getClass());
    }
}
