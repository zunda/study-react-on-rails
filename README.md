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

Console on http://localhost:3000/dashboard/index shows an error:

```
Uncaught Error: Invariant Violation: _registerComponent(...): Target container is not a DOM element.
invariant @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:1083
ReactMount._registerComponent @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:2777
ReactMount._renderNewRootComponent @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:2800
ReactPerf.measure.wrapper @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:1400
ReactMount._renderSubtreeIntoContainer @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:2880
ReactMount.render @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:2900
ReactPerf.measure.wrapper @ react.self-bf407d871f2396ec7dcba5eb91bd3f3955401699aef9b87f48b6e1694c24a078.js?body=1:1400
(anonymous function) @ sample.self-e1f13ba16efb9429724aa7aa729801a064aef2d8f598e417d8070529ecfc2482.js?body=1:12
```

