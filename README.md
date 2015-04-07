# Category-select-sandbox

Sample app for http://ja.stackoverflow.com/questions/8761

![Image](http://f.st-hatena.com/images/fotolife/J/JunichiIto/20150408/20150408071950.gif)

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

### 5. Open browser

```
open http://localhost:3000
```

## How to run test

```
bin/rspec
```

## License

MIT licence
