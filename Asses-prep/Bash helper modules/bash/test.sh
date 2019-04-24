#!/usr/bin/env bats

@test "adding numbers" {
  result="$(echo 2+2 | bc)"
  [ "$result" -eq 4 ]
}

@test "subtracting numbers" {
  result="$(echo 4-2 | bc)"
  [ "$result" -eq 2 ]
}

@test "dividing numbers" {
  result="$(echo 4/2 | bc)"
  [ "$result" -eq 2 ]
}

@test "multiplying numbers" {
  result="$(echo 2*2 | bc)"
  [ "$result" -eq 4 ]
}
