# Satis Composer Repository

This repository serves as a **private Composer package repository** for hosting internal PHP packages using [Satis](https://getcomposer.org/doc/articles/handling-private-packages-with-satis.md).  
Packages are made available via **GitHub Pages**

- Static package repository built with **Satis**.
- Hosted via **GitHub Pages** on the `gh-pages` branch.
- Supports **private repositories** for internal use.

To use this repository, your project's `composer.json` should include:

```json
{
    "repositories": [
        {
            "type": "composer",
            "url": "https://sjsage522.github.io/composer/"
        }
    ]
}
