User.create!([
  {email: "prueba@gmail.com", encrypted_password: "$2a$11$tcyaV3q3q0amahUAQ3fK8uZQz3S8F6wbL5gfdS17uAcBbcf8HRJj.", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2018-05-21 18:08:53", last_sign_in_at: "2018-05-21 15:08:45", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", style: "1"}
])
UserTraining.create!([
  {state: "asdfasdfasdf", training_id: 1, user_id: 1}
])
Training.create!([
  {title: "asdf", description: "asdf", init_date: "2018-05-21", finish_date: "2018-05-21"}
])
