@test "invoking yarn --version prints version" {
  run docker-compose exec dev yarn --version
  [ "$status" -eq 0 ] 
}

@test "invoking node --version prints version v7.x.x" {
  run docker-compose exec dev node --version
  [ "$status" -eq 0 ]
  [ "$output" == v7* ]
}

@test "invoking polymer-cli --version prints version" {
  run docker-compose exec dev polymer --version
  [ "$status" -eq 0 ]
}
