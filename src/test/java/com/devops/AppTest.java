package com.devops;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Tests unitaires pour l'application
 */
public class AppTest {
    
    @Test
    public void testAppExists() {
        App app = new App();
        assertNotNull("L'application doit exister", app);
    }
    
    @Test
    public void testMainMethod() {
        // Test que la méthode main peut être appelée sans erreur
        try {
            App.main(new String[]{});
            assertTrue("La méthode main doit s'exécuter sans erreur", true);
        } catch (Exception e) {
            fail("La méthode main ne doit pas lever d'exception: " + e.getMessage());
        }
    }
}

