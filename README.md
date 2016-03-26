== README

Rails app with favorites system. After signup user can add companies or people to his favorites and check list of its. 

### Implemented Features:
* user can login with [devise](https://github.com/plataformatec/devise) or with his Facebook account with help of gem [omniauth-facebook](https://github.com/mkdynamic/omniauth-facebook)
* add to favorites system with polymorphic association
* handcrafted search engine with advanced search option
* proper country display using [country_select](https://github.com/stefanpenner/country_select)
* url contains names of companies with [friendly_id](https://github.com/norman/friendly_id)
* add comments to companies with authorization by [cancancan](https://github.com/CanCanCommunity/cancancan), only author (and admin) can delete his comment
* records counter using counter_cache and gem [counter_culture](https://github.com/magnusvk/counter_culture)
* little bit of testing (models, controllers, integration)
* create admin panel using [rails_admin](https://github.com/sferik/rails_admin)
