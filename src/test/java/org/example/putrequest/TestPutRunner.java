package org.example.putrequest;

import com.intuit.karate.junit5.Karate;

public class TestPutRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("updateUserEntry").relativeTo(getClass());
    }
}
