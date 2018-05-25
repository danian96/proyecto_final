User.create!([
  {email: "prueba2@gmail.com", encrypted_password: "$2a$11$MgRgezX14S7DV2x.unoJ5ewEzlByfSI6UU6TMWH8Yrkcs1TrP70G6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-05-23 21:13:48", last_sign_in_at: "2018-05-23 21:13:48", current_sign_in_ip: "190.104.20.241", last_sign_in_ip: "190.104.20.241", style: "1", role: "postulante"},
  {email: "prueba3.@gmail.com", encrypted_password: "$2a$11$pSpHfWL8ErVzY7ZO3hgDqe3pLurlPJsGW3iBUKuaQITja/cy3dwsm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2018-05-23 21:14:47", last_sign_in_at: "2018-05-23 21:14:47", current_sign_in_ip: "190.104.20.241", last_sign_in_ip: "190.104.20.241", style: "1", role: "postulante"},
  {email: "prueba@gmail.com", encrypted_password: "$2a$11$s0gKEFANqAg0WrvrRXjlS.H51jp.ikLWMmdVyWi0HYYrMHkxzBEXC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2018-05-24 19:39:54", last_sign_in_at: "2018-05-24 18:15:34", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", style: "1", role: "superadmin"}
])
Person.create!([
  {name: "Prueba", last_name: "Prueba", birthday: "2018-05-23", sex: "Masculino", ci: 123456, address: "Prueba direccion", cellphone: 12356, user_id: 1, civil_state_id: 1},
  {name: "prueba2", last_name: "prueba2", birthday: "2018-05-23", sex: "Masculino", ci: 123123, address: "asdfasdf", cellphone: 123123, user_id: 2, civil_state_id: 1},
  {name: "Prueba3", last_name: "prueba3", birthday: "2018-05-23", sex: "Masculino", ci: 123123, address: "asfdasdf", cellphone: 123123, user_id: 3, civil_state_id: 1}
])
CivilState.create!([
  {name: "Soltero"},
  {name: "Casado"},
  {name: "Viudo"},
  {name: "Divorciado"}
])
Annunment.create!([
  {status: "Prioritario", title: "Reunion", descripcion: "Reporte de los avances de la empresa", departament_id: 3}
])
Departament.create!([
  {name: "Recursos Humanos"},
  {name: "Mantenimiento"},
  {name: "Marketing"},
  {name: "Contabilidad"}
])
Designation.create!([
  {name: "Gerente", departament_id: 3},
  {name: "secretaria", departament_id: 3}
])
StockCategory.create!([
  {name: "Laptops"}
])
