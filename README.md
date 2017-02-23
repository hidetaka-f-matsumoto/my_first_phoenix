# MyFirstPhoenix
## Docker
* docker build -t hidetakafm/my-first-phoenix .
* docker create -t -v ~/projects/private/my_first_phoenix:/var/apps/my_first_phoenix -p 3003:4000 --name my-first-phoenix hidetakafm/my-first-phoenix
* docker start my-first-phoenix
* docker exec -it my-first-phoenix bash

To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `npm install`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
