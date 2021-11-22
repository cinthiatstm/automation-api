Dado('o endereço da API') do
end

Quando('realizar a requisição POST') do
  $response = @user.post_user
end

Então('a API deverá retornar a messagem de sucesso e code') do
  expect($response.code).to eq(200)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("OK")
  puts "Response message: #{$response.message}"
  puts "Status   :  #{$response["status"]}"
  puts "Message   :  #{$response["message"]}"
end

Quando('realizar a requisição GET') do
  $response = @user.get_user
end

Então('a API deverá retornar status e code') do
  expect($response.code).to eq(200)
  puts "Response code: #{$response.code}"
  expect($response.message).to eq("OK")
  puts "Response message: #{$response.message}"
  puts "Status   :  #{$response["status"]}"
end