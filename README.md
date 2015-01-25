> **Note**: This is intend as a learning tool for myself. This may or may not make legally accurate paychecks or tax forms. It may make bowling scoresheets. I make no claims as to the usability of this code and I take no responsibility for your tax or legal problems. 

### View the Trello board 
https://trello.com/b/dZe0OnH8/rubypayroll

### Purpose
Ruby Payroll:

1. Manage employee data
2. Create paychecks including deductions for FICA, Medicare, federal, state and local taxes
3. View reports by time periods and tax forms

### Quickstart

1.  `bundle install`
2.  `shotgun config.ru`

As needed, create additional models & migrations with the `rake` tasks:

```
rake generate:migration  # Create an empty migration in db/migrate, e.g., rake generate:migration NAME=create_tasks
rake generate:model      # Create an empty model in app/models, e.g., rake generate:model NAME=User
```

### Contributing

Want to help?

1. Ask for a bug fix or enhancement!
2. Submit a pull request for a bug fix or enhancement!
3. Code review an open pull request!

Be prepared to give and receive specific, actionable, and kind feedback!
