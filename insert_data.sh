#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams")

cat games.csv | while IFS=',' read year round winner opponent winner_goals opponent_goals
do 
  # Check if winner is already in table teams and if not insert it
  if [[ $winner != 'winner' ]] 
  then
    insert_winner=$($PSQL "select name from teams where name='$winner'")
    if [[ -z $insert_winner ]]
    then
      winner_id=$($PSQL "insert into teams(name) values('$winner')")
       echo Inserted: $winner into teams
    fi

    # Insert opponent
    insert_opponent=$($PSQL "select name from teams where name='$opponent'")
    if [[ -z $insert_opponent ]]
    then
      opponent_id=$($PSQL "insert into teams(name) values('$opponent')")
      echo Inserted: $opponent into teams
    fi

    # get ids of winner and opponent to enter data into games
    winner_id=$($PSQL "select team_id from teams where name='$winner'")
    opponent_id=$($PSQL "select team_id from teams where name='$opponent'")
    insert_games=$($PSQL "insert into games(year, winner_id, opponent_id, winner_goals, opponent_goals, round) 
      values($year, $winner_id, $opponent_id, $winner_goals, $opponent_goals, '$round')")
    echo Inserted: $round $winner $opponent $year into games
  fi
done
