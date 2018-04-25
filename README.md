# PHP Boilerplate

A boilerplate for new composer based PHP projects.

## Getting started

```bash
# With composer
$ composer create-project kreait/php-boilerplate new-project

# With git
$ git clone git@github.com:kreait/php-boilerplate.git new-project && cd $_ && rm -rf .git && git init
```

### Update `composer.json`

Replace the Namespaces in the `autoload` and `autoload-dev` sections with your project's namespaces
and run `composer dump-autoload`.

### (Optional) Update `.gitattributes`

Remove the comments in `.gitattributes` so that unneeded files for your package won't get included in your releases.

### (Optional) Add `composer.lock` to the `.gitignore` file

If you're creating an application instead of a library, it is considered good practice to commit the `composer.lock` file together with the rest of the code.

### Start coding! :smile:
