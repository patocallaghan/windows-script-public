@echo off

setlocal
set WWW_ROOT="./foo-website"
set LISTEN_HOST="127.0.0.1"
set LISTEN_PORT=8009

echo "Serving %WWW_ROOT% on http://%LISTEN_HOST%:%LISTEN_PORT% (^C to stop)."

ruby -run -e httpd %WWW_ROOT% -p %LISTEN_PORT% || php -S "%LISTEN_HOST%:%LISTEN_PORT%" -t %WWW_ROOT% || npx serve %WWW_ROOT% -l %LISTEN_PORT% || cd %WWW_ROOT% && python3 -m http.server %LISTEN_PORT%
