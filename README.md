# Category-select-sandbox

Sample app for http://ja.stackoverflow.com/questions/8761

## How to setup

### 1. Install PhantomJS

Poltergeist requires PhantomJS. See https://github.com/teampoltergeist/poltergeist#installing-phantomjs

```
brew install phantomjs
```

### 2. Bundle install

```
bundle install
```

### 3. Set up initial data

```
bin/rake db:reset db:seed
```

### 4. Run Rails server

```
rails s
```

## How to run test

```
bin/rspec
```