# aria2-client

aria2 client docker-compose setup intended for one-off runs.

## Usage

Run the setup from within the directory with

    docker-compose run --rm app

You can pass additional parameters, e.g. the URL of the file aria2 should download.

    $ docker-compose run --rm app https://www.google.com/

    04/25 08:02:49 [NOTICE] Downloading 1 item(s)
    04/25 08:02:49 [NOTICE] Download complete: /downloads/index.html

    Download Results:
    gid   |stat|avg speed  |path/URI
    ======+====+===========+=======================================================
    f5a05f|OK  |    49KiB/s|/downloads/index.html

    Status Legend:
    (OK):download completed.
