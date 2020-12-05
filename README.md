# Kantan 簡単

Kantan 簡単 (simple, easy) - A set of bash scripts to launch a web server, watch files and launch build commands.

The goal is to be able to install and configure a web development environment in a few minutes.

## How to install

Kantan works on linux by using the inotify API. To use it, you need to install`inotify-tools` with the package manager of your choice.

On ubuntu:

```
sudo apt install inotify-tools
```

Download the files manually or git clone in your project:

```
git clone git@github.com:Thomasorus/Kantan.git .
```

Allow the scripts to be executed:
```
chmod +x ./kantan.sh ./kantan/phpserver.sh ./kantan/nodeserver.sh ./kantan/pythonserver.sh
```

## Configure Kantan

Open kantan.sh to configure it to your needs (default values are provided). You can customize these settings:

- **KEY** : The key combination to refresh your browser
- **BROWSER** : The browser you use
- **AUTOSWITCH** : If you want an automatic alt-tab to the browser for the refresh
- **LOCATION** : The folder or file you want to watch
- **SERVER** : The server type you want to use (use the ones provided or create your own!)
- **BUILD** : The build command you want to use (ex: npm run build)

## Choose your web server

Depending on your system and your project you might have different requirements for your web server. For example you might be working on a PHP project without having NodeJS installed. To help with this, Kantan comes with several pre-configured scripts that will launch a web server in the environnement of your choice.

Available web servers:

- Node JS
- PHP
- Python (WIP)

By default they all serve the port 8000.

### Configure your server

- Open `kantan.sh` and on line 7 choose between `php`, `node` or `python`.
- In the `/kantan` folder, open the server `.sh` file of your choice and  follow instructions.

## License

Kantan 簡単 is free to use by individuals and organizations that do not operate by capitalist principles. For more information see the license file.