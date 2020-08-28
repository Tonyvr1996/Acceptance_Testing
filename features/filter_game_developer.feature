# language: en

Feature: Search games by developer

  @gamesByName
  Scenario: Filter games that have developer 'Bandai Namco Studios'
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the developer: Bandai Namco Studios
      When the user search games by developer
      Then 1 games will match
      And the names of these games are
      | NAME                       |
      | Super Smash Bros. Ultimate |
      And the following message is displayed: A game developed by Bandai Namco Studios was found.


  @gamesByDeveloper
  Scenario: Filter games by developer without finding result
      Given a set of games
     | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
      Given the user enters the developer: Tencent
      When the user search games by developer
      Then 0 games will match
      And the following message is displayed: No game developed by Tencent found