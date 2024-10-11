Feature: sample karate test script
  for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * callonce read('classpath:examples/shared/shared.feature')

  Scenario: Scenario 1
    * print 'Hello from Test 1 - Scenario 1'
    * call read('@generic_print') { message: 'Test 1 - Scenario 1' }

  Scenario: Scenario 2
    * print 'Hello from Test 1 - Scenario 2'
    * call read('@generic_print') { message: 'Test 1 - Scenario 2' }

  @generic_print @ignore
  Scenario: Generic Scenario
    * print 'Hello from Generic Scenario - called by ' + message
