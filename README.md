# Medals

[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

Ruby on Rails application initialized with [Hix on Rails][hixonrails].

## System dependencies

- Ruby version: 2.6.6
- Rails version: 6.0.3.1
- Database: PostgreSQL
- Redis installed

## Setup

```bash
bin/setup
```

## How to start the app

Start the Ruby on Rails server with:
```bash
rails server
```

To run the webpack-dev-server, optional but recommended, launch another process with:
```bash
bin/webpack-dev-server
```

To run Sidekiq, launch another process with:
```bash
bundle exec sidekiq
```

I currently use Tmuxinator to do the above, but am happy to accept PR's to sample configs for your favorite tool (Foreman, Docker, teamocil, etc.).

## Code quality, formatting, and linters

The application provides several code quality analysis tools and linters baked in. If they are important, they will be run as a CI check when commits are pushed. Otherwise, they are just nice to have. There will be a binstub or script in `package.json` you can use to run most of the tools. TL;DR Run `bin/format` before committing and you don't have to pay attention to anything else. If you are interested though:

### Security

- [Brakeman][brakeman]: A static analysis security vulnerability scanner for RoR

### Performance & DB optimizations

- [Fasterer][fasterer]: CLI tool to suggest some speed improvements for Ruby
- [Bullet][bullet]: Help to kill N+1 queries and unused eager loading**
- [Webpack Bundle Analyzer][webpack-bundle-analyzer]: Visualize size of webpack output files with an interactive zoomable treemap
- [lol_dba][lol_dba]: Find DB columns that should be indexed

### Formatting & Linters

- [Rails Best Practices][rails-best-practices]
- [Annotate*][annotate_models]: Annotate Rails classes with schema and routes info
- [ERB Lint*][erb-lint]: Linter for your ERB & HTML files
- [Model Probe*][model_probe]: Schema introspection for ActiveModel. Run with `rails model_probe:probe[YourModelName]`
- [Prettier Standard*][prettier-standard]: Formats JS & CSS with Prettier and lints with ESLint+Standard
- [StandardRB*][standardrb]: Ruby Style Guide, with linter & automatic code fixer
- [StrongVersions*][strong_versions]: Enforce a strict versioning policy in your Gemfile

>`*` Required to be run for merge. Running `bin/format` should auto-correct everything for you. The exception is Model Probe, which you will need to run yourself if you add a new model.

>`**` Is running in the background or will run automatically after certain actions happen

[annotate_models]: https://github.com/ctran/annotate_models
[brakeman]: https://github.com/presidentbeef/brakeman
[bullet]: https://github.com/flyerhzm/bullet
[erb-lint]: https://github.com/Shopify/erb-lint
[fasterer]: https://github.com/DamirSvrtan/fasterer
[hixonrails]: https://hixonrails.com
[lol_dba]: https://github.com/plentz/lol_dba
[model_probe]: https://github.com/hopsoft/model_probe/
[prettier-standard]: https://github.com/sheerun/prettier-standard
[rails-best-practices]: https://github.com/flyerhzm/rails_best_practices
[standardrb]: https://github.com/testdouble/standard
[strong_versions]: https://github.com/bobf/strong_versions
[webpack-bundle-analyzer]: https://github.com/webpack-contrib/webpack-bundle-analyzer
