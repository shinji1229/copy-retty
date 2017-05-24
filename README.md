# **DB設計**


## **users table**


|   Column   |     Type     |             Options                    |
|:-----------|-------------:|:--------------------------------------:|
|    name    |    string    | null: false, unique: true              |
|   email    |    string    | null: false, unique: true              |


<dl>
  <dt>Association</dt>
  <dd>has_many :restaurants, through: :restaurant_users</dd>
  <dd>has_many :comments</dd>
  <dd>has_many :restaurant_users</dd>
</dl>


## **restaurants table**


|   Column    |     Type     |             Options                    |
|:------------|-------------:|:--------------------------------------:|
|     name    |    string    | index:true, null: false, unique: true  |
|   address   |    string    |       null: false, unique: true        |
| phonenumber |    integer   |       null: false, unique: true        |
|    genre    |    string    |       null: false                      |
|   budget    |    integer   |       null: false                      |

<dl>
  <dt>Association</dt>
  <dd>has_many :users, through: :restaurant_users</dd>
  <dd>has_many :comments</dd>
  <dd>has_many :restaurant_users</dd>
</dl>


## **restaurant_users table**


|   Column   |     Type     |             Options                    |
|:-----------|-------------:|:--------------------------------------:|
| user_id    |    integer   | foreign_key: true                      |
| group_id   |    integer   | foreign_key: true                      |


<dl>
  <dt>Association</dt>
  <dd>belongs_to :user</dd>
  <dd>belongs_to :restaurant</dd>
</dl>

## **comments table**


|    Column     |     Type     |             Options                    |
|:--------------|-------------:|:--------------------------------------:|
|     body      |    text      |                                        |
|     image     |    string    |                                        |
|     user_id   |    integer   | foreign_key: true                      |
| restaurant_id |    integer   | foreign_key: true                      |


<dl>
  <dt>Association</dt>
  <dd>belongs_to :user</dd>
  <dd>belongs_to :restaurant</dd>
</dl>
