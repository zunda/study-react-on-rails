# study-react-on-rails
I'm learning React following http://qiita.com/mmyoji/items/ce7fef70c0c91aca793b :)

## What I have done so far
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
