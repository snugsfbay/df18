/*
    @author Nathan Lipke
    @description Tests autolauch Flow doubler to verify number doubling
*/
@isTest
public class testFlow{

    
    @isTest
    static void testDoubler(){    
        Map<String, Object> variables = new Map<String, Object>();
        variables.put('in', 21);
        
        Flow.Interview.doubler myFlow = new Flow.Interview.doubler(variables);
        myFlow.start();
        System.assert(myFlow.out == 21 * 2, 'Expected 21 to be doubled to: 42');                
    }
}