
# users
| column             | type    | option                       | 
| ------------------ | ------- | ---------------------------- | 
| email              | string  | null: false , unique: true   | 
| encrypted_password | string  | null: false                  | 
| first_name         | string  | null: false                  | 
| last_name          | string  | null: false                  | 
| admin_true         | boolean | null: false , default: false | 

### associations
* has_one:clients_info_name
* has_many:comments

# clients_info_name
| column             | type   option                                | 
| ------------------ | --------------------------------------       | 
| client_info1_name  |string      |                                 | 
| client_info2_name  | string     |                                 | 
| client_info3_name  | string     |                                 | 
| client_info4_name  | string     |                                 | 
| client_info5_name  | string     |                                 | 
| client_info6_name  | string     |                                 | 
| client_info7_name  | string     |                                 | 
| client_info8_name  | string     |                                 | 
| client_info9_name  | string     |                                 | 
| client_info10_name | string     |                                 | 
| user               | references | null: false , foreign_key: true |

### associations
* has_one:user
* has_many:clients_info


# clients_info
| column            | type       | option                          | 
| ----------------- | ---------- | ------------------------------- | 
| client_name       | string     | null: false                     | 
| client_info1      | string     |                                 | 
| client_info2      | string     |                                 | 
| client_info3      | string     |                                 | 
| client_info4      | string     |                                 | 
| client_info5      | string     |                                 | 
| client_info6      | string     |                                 | 
| client_info7      | string     |                                 | 
| client_info8      | string     |                                 | 
| client_info9      | string     |                                 | 
| client_info10     | string     |                                 | 
| clients_info_name | references | null: false , foreign_key: true | 

### associations
* belongs_to:client_info_name
* has_many:schedules

# process_machines
| column          | type   | option                           | 
| --------------- | ------ | -------------------------------- | 
| pm_name         | string | null: false                      | 
| pm_abbreviation | string | null: false                      | 
| pm_color        | string | null: false                      |

### associations
* has_one:schedule


# schedules
| column          | type       |option                          | 
| -------------   | ---------- |------------------------------- | 
| start_date      | date       | null: false                    | 
| end_date        | date       | null: false                    | 
| process_machine | references | null: false , foreign_key:true | 
| clients_info    | references | null: false , foreign_key:true | 

### associations
* belongs_to:client_info
* belongs_to:process_machine

# comments
| column   | type       | option                          | 
| -------- | ---------- | ------------------------------- | 
| comment  | string     | null: false                     | 
| user     | references | null: false , foreign_key: true | 

### associations
* belongs_to: user



