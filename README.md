# i_ching

Small repo to show how to spec something in Cucumber (in this case the rules of I Ching). Suggested reading order is:

1. `casting.feature`
1. `scoring.feature`
1. `plotting.feature`
1. `changing.feature`

## Running Cucumber with Docker

This isn't a Web application, but to get running with Cucumber quickly you can use Docker:

1. Install Docker for your platform
2. Run `docker build -t i_ching .`
3. Run `docker run --rm i_ching cucumber`
4. After editing, run `docker build -t i_ching .` again before running Cucumber again

## Running Cucumber with RubyMine IDE

Follow the instructions at https://www.jetbrains.com/help/ruby/using-docker-as-a-remote-interpreter.html.

## Contributing to i_ching
 
1. Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
1. Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
1. Fork the project.
1. Start a feature/bugfix branch.
1. Commit and push until you are happy with your contribution.
1. Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
1. Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2013--2016 Nigel Lowry. See LICENSE.txt for
further details.

