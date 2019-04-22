# Source code for the official website of Serum

This repository holds source codes for the official website of
[Serum](http://dalgona.github.io/Serum). I recommend you to read these codes
while reading [docs](http://dalgona.github.io/Serum/docs/).

## Building the site

1. Clone this repository.

    ```
    $ git clone https://github.com/Dalgona/serum-site.git
    ```

2. Install the dependencies (which include Serum).

    ```
    $ cd serum-site
    $ mix do deps.get, deps.compile
    ```

3. Use `mix serum.build` or `mix serum.server` to test the website.

    ```
    $ mix serum.build

    # Or,
    $ mix serum.server
    ```

4. Open `http://localhost:8080/Serum/` with your web browser. Don't miss the
  slash at the end of the URL.

