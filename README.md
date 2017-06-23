# **DB設計**


## **users table**


|   Column   |     Type     |             Options                    |
|:-----------|-------------:|:--------------------------------------:|
|    name    |    string    | null: false, unique: true              |
|   email    |    string    | null: false, unique: true              |


<dl>
  <dt>Association</dt>
  <dd>has_many :events</dd>
  <dd>has_many :comments</dd>
</dl>


## **restaurants table**


|   Column    |     Type     |             Options                    |
|:------------|-------------:|:--------------------------------------:|
|     name    |    string    | index:true, null: false, unique: true  |
|   address   |    string    |       null: false, unique: true        |
| phonenumber |    integer   |       null: false, unique: true        |
|    genre    |    string    |       null: false                      |
|budget_lunch |    integer   |       null: false                      |
|budget_dinner|    integer   |       null: false                      |

<dl>
  <dt>Association</dt>
  <dd>has_many :comments</dd>
  <dd>has_one  :introduction</dd>
</dl>

## **introduction table**


|    Column     |     Type     |             Options                    |
|:--------------|-------------:|:--------------------------------------:|
|     title     |    string    |                                        |
|     body      |     text     |                                        |
|     image     |    string    |                                        |
| restaurant_id |    integer   | foreign_key: true                      |

<dl>
  <dt>Association</dt>
  <dd>belongs_to :restaurant</dd>
</dl>




## **comments table**


|    Column     |     Type     |             Options                    |
|:--------------|-------------:|:--------------------------------------:|
|     body      |    text      | null: false                            |
|     image     |    string    |                                        |
|     rate      |    integer   | null: false                            |
|     user_id   |    integer   | foreign_key: true                      |
| restaurant_id |    integer   | foreign_key: true                      |


<dl>
  <dt>Association</dt>
  <dd>belongs_to :user</dd>
  <dd>belongs_to :restaurant</dd>
</dl>

## **events table**


|    Column     |     Type     |             Options                    |
|:--------------|-------------:|:--------------------------------------:|
|     title     |    string    |                                        |
|     start     |    datetime  |                                        |
|     end       |    datetime  |                                        |
|     user_id   |    integer   | foreign_key: true                      |

<dl>
  <dt>Association</dt>
  <dd>belongs_to :user</dd>
</dl>



