# Schema & data migrations status
rake db:migrate:status
rake data:migrate:status

# UP, Down, rollback, redo data operations
rake data:migrate:up VERSION=20221024160310
rake data:migrate:down VERSION=20221024160310
rake data:migrate:rollback STEP=3
rake data:migrate:redo STEP=3

# UP, Down, rollback, redo schema operations
rake db:migrate:up VERSION=20221024160310
rake db:migrate:down VERSION=20221024160310
rake db:migrate:rollback STEP=3
rake db:migrate:redo STEP=3

# Status with data
rake db:migrate:status:with_data

# Migrate with data
rake db:migrate:with_data
