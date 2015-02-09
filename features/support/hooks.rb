# https://github.com/cucumber/cucumber/wiki/Hooks
# Cucumber provides a number of hooks which allow us to run blocks at various points in the Cucumber test cycle.
# This has some common examples, see documentation for more hooks.

Before do |scenario|
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.
  # Rails.logger.debug "Starting scenario: #{scenario.title}"
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.

  # if scenario.failed?
  #   subject = "[Project X] #{scenario.exception.message}"
  #   send_failure_email(subject)
  # end
end

Around('@fast') do |scenario, block|
  # Scenarios tagged with @fast to fail if the execution takes longer than 0.5 seconds:
  # Timeout.timeout(0.5) do
  #   block.call
  # end
end


AfterStep do |scenario|
  # Do something after each step.
end
