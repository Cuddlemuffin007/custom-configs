set nu                                           " Set line numbers on startup
autocmd BufWritePost *.py call Flake8()          " Run linting on python file save
