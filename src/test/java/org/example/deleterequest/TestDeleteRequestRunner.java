package org.example.deleterequest;

import com.intuit.karate.junit5.Karate;

public class TestDeleteRequestRunner {
    @Karate.Test
    public Karate runTest() {
        return Karate.run("deleteUser").relativeTo(getClass());
    }
}
