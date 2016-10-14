
# README
<a href="https://codeclimate.com/github/matheusfreire/ppoker">
   <img src="https://codeclimate.com/github/matheusfreire/ppoker/badges/gpa.svg" />
</a>

This application is a challenge for making a rails application to create a planning poker strategy.


* Ruby version
    * 2.2.4+

* System dependencies
    * Postgres
    * Rails 5.0.0.1
    
Use the follow command to pull to your workspace:
git clone https://github.com/matheusfreire/ppoker

* Database creation:
`For the first time use rake db:setup to create database in your pc.`

* Database initialization:
`Use rails db:migrate to run all migration.`

* Deployment instructions:
`rails s -b 0.0.0.0``

This challenge have the follow features:
* CRUD of User with profile attr and [Devise](https://github.com/plataformatec/devise) (login, recover, forget password etc.);
* Create User Stories (US) with Product Owner profile;
* Show US for developer and all team;
* Vote on planning poker in the US for all team;
* Policies strategies with [Pundit](https://github.com/elabs/pundit)
    
