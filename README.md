# study-react-on-rails
I leant React following
- http://qiita.com/mmyoji/items/ce7fef70c0c91aca793b and
- http://facebook.github.io/react/docs/tutorial.html
Was fun :)

## What I have done
### Prepare rails
```
$ cat Gemfile
source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails'
$ bundle install --path vendor/bundle
$ bundle exec rails new .
  :
         run  bundle install
/usr/bin/ruby2.1: No such file or directory -- /usr/lib/ruby/bin/bundle (LoadError)
         run  bundle exec spring binstub --all
/usr/bin/ruby2.1: No such file or directory -- /usr/lib/ruby/bin/bundle (LoadError)
```

WTF?

```
$ bundle install
$ bundle exec spring binstub --all
$ rm README.rdoc
```

### Prepare react
```
$ vi Gemfile
$ bundle install
$ bundle exec rails g react:install
```

### Prepare dashboard
```
$ bundle exec rails g controller Dashboard index
$ vi app/views/dashboard/index.html.erb
$ bundle exec rails g react:component Sample
$ vi app/assets/javascripts/components/sample.js.jsx
$ bundle exec rails s
```

### Create endpoint for Comments
```
$ bundle exec rails g scaffold Comment author:string text:text
$ bundle exec rake db:migrate
$ bundle exec rake db:seed
```

### See it working
http://localhost:3000/dashboard/index

## Update rails
```
$ bundle install --path=vendor/bundle
$ vi Gemfile
$ bundle update rails
$ bundle exec rake test
$ vi Gemfile
$ bundle install
```
